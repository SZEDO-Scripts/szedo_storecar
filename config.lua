Config = {}

-- Approved vehicle models
Config.AllowedVehicles = {
    "adder", -- you can add more car 
}

Config.key = 38 -- 38 = E keybind visit https://docs.fivem.net/docs/game-references/controls/ to change

-- Marker position
Config.Marker = {
    x = 215.76,
    y = -791.32,
    z = 30.8,
    size = 1.5,
    color = {r = 0, g = 255, b = 0}
}

-- Blip settings
Config.Blip = {
    enabled = true,
    coords = vector3(215.76, -791.32, 31.0),
    sprite = 357,
    color = 2,
    scale = 0.8,
    name = "Vehicle Storage"
}

-- Notification system
-- Can be: "esx", "okokNotify", "custom" or you can add your own
Config.NotifyType = "esx"

function Notify(msg, type)
    if Config.NotifyType == "esx" then
        ESX.ShowNotification(msg)
    elseif Config.NotifyType == "okokNotify" then
        exports['okokNotify']:Alert("Storage", msg, 5000, type or "info")
        -- elseif
    else
        print("^3[Notify] ^7" .. msg)
    end
end
