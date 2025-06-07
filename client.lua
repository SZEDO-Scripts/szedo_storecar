ESX = exports["es_extended"]:getSharedObject()

local markerCoords = vector3(Config.Marker.x, Config.Marker.y, Config.Marker.z)
local inMarker = false

-- Creating a blip
if Config.Blip.enabled then
    local blip = AddBlipForCoord(Config.Blip.coords)
    SetBlipSprite(blip, Config.Blip.sprite)
    SetBlipDisplay(blip, 4)
    SetBlipScale(blip, Config.Blip.scale)
    SetBlipColour(blip, Config.Blip.color)
    SetBlipAsShortRange(blip, true)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString(Config.Blip.name)
    EndTextCommandSetBlipName(blip)
end

-- Marker and interaction
CreateThread(function()
    while true do
        Wait(0)
        local playerPed = PlayerPedId()
        local coords = GetEntityCoords(playerPed)
        local dist = #(coords - markerCoords)

        if dist < 15.0 then
            DrawMarker(1, markerCoords.x, markerCoords.y, markerCoords.z - 1.0, 0, 0, 0, 0, 0, 0,
                Config.Marker.size, Config.Marker.size, 1.0, Config.Marker.color.r, Config.Marker.color.g, Config.Marker.color.b, 150, false, true, 2, nil, nil, false)

            if dist < 1.5 then
                ESX.ShowHelpNotification("Press ~INPUT_CONTEXT~ to store the vehicle")
                if IsControlJustReleased(0, Config.key) then -- E keybind you can config in config.lua
                    local veh = GetVehiclePedIsIn(playerPed, false)
                    if veh ~= 0 then
                        local model = GetDisplayNameFromVehicleModel(GetEntityModel(veh)):lower()
                        if IsAllowedVehicle(model) then
                            DeleteVehicle(veh)
                            Notify("Vehicle successfully stored!", "success")
                        else
                            Notify("This vehicle cannot be stored here!", "error")
                        end
                    else
                        Notify("You are not sitting in a vehicle!", "error")
                    end
                end
            end
        end
    end
end)

-- Checking authorized vehicle models
function IsAllowedVehicle(model)
    for _, allowed in ipairs(Config.AllowedVehicles) do
        if model == allowed:lower() then
            return true
        end
    end
    return false
end
