# szedo_storecar 🚗📦


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
- (Optional) okoknotify or any notification system you configure.

---

## Issues & Support 🛠️

If you find any bugs or have questions, please open an issue or contact me!

---



