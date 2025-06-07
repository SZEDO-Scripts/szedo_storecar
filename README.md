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
