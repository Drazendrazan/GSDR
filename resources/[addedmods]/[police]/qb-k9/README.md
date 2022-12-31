# Police K9 Scripts 

* Originally forked from hashisx https://github.com/hashisx/hashx_k9 
* Re-released from FjamZoo https://github.com/FjamZoo/qb-k9

## WARNING: Only works on old core!!! Have not tested on new core!!!

## Support me on Ko-Fi!
### - xViperAG
[![ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/xviperag)

## Credits:

- Hashisx - Original creator of hashx_k9 - https://github.com/hashisx/hashx_k9/
- FjamZoo - Maintaining and Forking to qb-k9 - https://github.com/FjamZoo/qb-k9/
- Jimathy666 - Inspiration from jim-mechanic for Dog House Prop - https://jimathy666.tebex.io/
- martinct - German Shepherd Ped Model on LCPDFR - https://www.lcpdfr.com/downloads/gta5mods/character/19996-german-shepherd-malinois-k9-dog/

### How To Use:

* Request a dog from the doghouses specified in the config

* Press Z to follow or attack (Must be pointing a weapon to attack).

* Press K to show K9 Commands (Both of these are now keymaps so its a on user basis)

### How To Install The K-9 Ped

- Take the german-shepherd file and place it in your [standalone] folder.
- Restart and Clear Server Cache
- Voila!

### Config Use

You can place dog houses in areas of your choosing. The current locations are at Gabz Davis and MRPD (MRPD is commented out)

![image](https://i.imgur.com/FsqhCvS.jpeg)

Added Patches for German Shepherd Ped (Please read Config THOROUGHLY!!!)

### Searching

 You must be facing your target (vehicle or player) when selecting the Search Action, except for Search Area.
 Sometimes the Search Person will pick up the dog. Best to have the dog behind you.

### You must add this to QB Inventory Server main.lua.
```
    local function HasItem(list, item)

        for i = 1, #list do

            if item == list[i] then
                return true
            end
        end

        return false
    end

    AddEventHandler("inventory:server:SearchLocalVehicleInventory", function(plate, list, cb)
    local trunk = Trunks[plate]
    local glovebox = Gloveboxes[plate]
    local result = false

    if trunk ~= nil then
        for k, v in pairs(trunk.items) do
            local ITEM = trunk.items[k].name
            if HasItem(list, ITEM) then
                RESULT = true
            end
        end
    else
        trunk = GetOwnedVehicleItems(plate)

        for k, v in pairs(trunk) do

            local ITEM = trunk[k].name
            if HasItem(list, ITEM) then
                RESULT = true
            end
        end

    end

    if glovebox ~= nil then
        for k, v in pairs(glovebox.items) do

            local ITEM = glovebox.items[k].name
            if HasItem(list, ITEM) then
                RESULT = true
            end
        end
    else
        glovebox = GetOwnedVehicleGloveboxItems(plate)

        for k, v in pairs(glovebox) do
            local ITEM = glovebox[k].name
            if HasItem(list, ITEM) then
                RESULT = true
            end
        end
    end
    cb(RESULT)
end)
```
