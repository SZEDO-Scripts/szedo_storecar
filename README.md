# szedo_storecar 🚗📦

A simple FiveM ESX script for storing your vehicle by pressing a key inside a marker.  
Supports configurable allowed vehicles, notifications, blips, and keybind.

> 🔧 This script was created for situations where you can spawn vehicles using other scripts,  
> but there's no way to store or remove them after you're done (e.g. after work, job missions, etc).  
> With this, players can easily store their vehicles at a predefined spot.

---

## Features ✨

- 📍 Displays a marker at a configurable location.  
- 🗺️ Adds a blip on the map for the storage spot.  
- 🚘 Only allows storing specific vehicle models defined in the config.  
- 🔔 Shows notifications for success or error.  
- ⚙️ Supports configurable notification system (`esx.ShowNotification`, `okokNotify`, or custom).  
- 🎨 Configurable marker and blip position, size, color, etc.

---

## Installation 🛠️

1. Copy the `szedo_storecar` folder into your server's `resources` folder (e.g., `resources/[local]/szedo_storecar`).  
2. Add the following line to your `server.cfg`:  

3. Edit the `config.lua` file to fit your needs.

---

## Configuration ⚙️

Customize the following in `config.lua`:

- 📍 **Config.Marker:** Marker coordinates (x, y, z), size, color.  
- 🗺️ **Config.Blip:** Blip coordinates, icon, color, name, visibility.  
- 🚘 **Config.AllowedVehicles:** List of allowed vehicle model names.  
- 🔔 **Config.NotifyType:** Notification system to use (`esx`, `okokNotify`, or `custom`).  
- 🎮 **Config.Key:** Key code to press for storing (default is 38 for the `E` key).

---

## Usage 🎮

- Approach the marker.  
- Press the configured key (`E` by default).  
- If your vehicle is in the allowed list, it will be stored (deleted), and you will receive a success notification.  
- If the vehicle is not allowed, you will receive an error notification.

---

## Dependencies 📦

- [ESX Framework](https://esx-framework.org/)  
- (Optional) okokNotify or any notification system you configure.

---

## Issues & Support 🛠️

If you find any bugs or have questions, please open an issue or contact me!

---

## License 📄

MIT License

---

**Created by:** ChatGPT 🤖, customized by **szedo**
