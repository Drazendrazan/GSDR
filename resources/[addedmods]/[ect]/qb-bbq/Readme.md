Update - 18/12/22 - Now supports custom recipes. editable through config file only
another update on 18/12/22 - Now has a fuel system toggle in the config ;)


Discord - https://discord.gg/3WYz3zaqG5

# A BBQ Script for QBCore Framework

## Please note

- Please make sure u use the latest dependencies aswell as core for this in order to work.

- This Job has been tested on the latest build as of 07/07/2022.


## Dependencies :

QBCore Framework - https://github.com/qbcore-framework/qb-core

PolyZone - https://github.com/mkafrin/PolyZone

qb-target - https://github.com/BerkieBb/qb-target

qb-input - https://github.com/qbcore-framework/qb-input

qb-menu - https://github.com/qbcore-framework/qb-menu

qb-shops - https://github.com/qbcore-framework/qb-shops 

## Known Issues 
```
FIXED -- shop not working on some servers. now converted to qb-menu based shop
```

## Credits : 

- Breadlord as this was his original idea and he gave me permission to do it instead. 
- Jason. for giving me some code to delete prop after use - Top Guy
- Flash061 for his idea of buyable grills to place down
- HunterMak98 for her images, names and descriptions
- Toxmina for helping with images 
- Curly for his menu style
- Willyshotty for his idea of custom recipes

## Insert into @qb-core/shared/items.lua 

```
QBShared.Items = {
--qb-bbq
	['b-burger'] 			        = {['name'] = 'b-burger', 		        	   	['label'] = 'Beef Burger', 		    ['weight'] = 500, 		['type'] = 'item', 		['image'] = 'b-burger.png', 	        	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'A Juicy Beef Burger'},
    ['b-uc-burger'] 			    = {['name'] = 'b-uc-burger', 		           	['label'] = 'Raw Burger', 	        ['weight'] = 500, 		['type'] = 'item', 		['image'] = 'b-uc-burger.png', 	        	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'A Raw Patty of Beef'},
    ['b-chicken'] 			        = {['name'] = 'b-chicken', 		        	   	['label'] = 'Chicken Burger', 	    ['weight'] = 500, 		['type'] = 'item', 		['image'] = 'b-chicken.png', 	        	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'A Tender Chicken Burger'},
    ['b-uc-chicken'] 			    = {['name'] = 'b-uc-chicken', 		           	['label'] = 'Raw Chicken Burger',   ['weight'] = 500, 		['type'] = 'item', 		['image'] = 'b-uc-chicken.png', 	       	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'A Raw Chicken Patty'},
    ['b-hotdog'] 			        = {['name'] = 'b-hotdog', 		        	   	['label'] = 'HotDog', 		        ['weight'] = 500, 		['type'] = 'item', 		['image'] = 'b-hotdog.png', 	        	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Topped HotDog'},
    ['b-uc-hotdog'] 			    = {['name'] = 'b-uc-hotdog', 		           	['label'] = 'Raw HotDog', 	        ['weight'] = 500, 		['type'] = 'item', 		['image'] = 'b-uc-hotdog.png', 	        	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'A Raw HotDog'},
    ['b-ribs'] 			            = {['name'] = 'b-ribs', 		        	   	['label'] = 'Spare Ribs', 		    ['weight'] = 500, 		['type'] = 'item', 		['image'] = 'b-ribs.png', 	            	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'A Tangy Rack of Ribs'},
    ['b-uc-ribs'] 	     		    = {['name'] = 'b-uc-ribs', 		             	['label'] = 'Raw Ribs', 	        ['weight'] = 500, 		['type'] = 'item', 		['image'] = 'b-uc-ribs.png', 	        	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'A Raw Rack of Ribs'},
    ['b-brisket'] 			        = {['name'] = 'b-brisket', 		        	   	['label'] = 'Brisket Joint', 	    ['weight'] = 500, 		['type'] = 'item', 		['image'] = 'b-brisket.png', 	        	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Nicely Cooked Brisket'},
    ['b-uc-brisket'] 			    = {['name'] = 'b-uc-brisket', 		           	['label'] = 'Raw Brisket', 	        ['weight'] = 500, 		['type'] = 'item', 		['image'] = 'b-uc-brisket.png', 	       	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Raw Brisket Joint'},
    ['b-jacket'] 			        = {['name'] = 'b-jacket', 		        	   	['label'] = 'Loaded Jacket', 	    ['weight'] = 500, 		['type'] = 'item', 		['image'] = 'b-jacket.png', 	        	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'A Fully Loaded Jacket Potato'},
    ['b-uc-jacket'] 			    = {['name'] = 'b-uc-jacket', 		           	['label'] = 'Raw Jacket', 	        ['weight'] = 500, 		['type'] = 'item', 		['image'] = 'b-uc-jacket.png', 	        	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'A Raw Jacket Potato'},
   ['bbq1'] 			 	    	 = {['name'] = 'bbq1', 					    	['label'] = 'Forge Djorman', 		['weight'] = 500, 		['type'] = 'item', 		['image'] = 'bbq1.png', 		    		['unique'] = true, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'For when youre wanting that perfect char-grilled taste'},
	['bbq2'] 			 			 = {['name'] = 'bbq2', 					    	['label'] = 'Leetle Grill', 		['weight'] = 500, 		['type'] = 'item', 		['image'] = 'bbq2.png', 		    		['unique'] = true, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Who likes tiny portable grills? We do'},
	['bbq3'] 			 			 = {['name'] = 'bbq3', 					    	['label'] = 'Stand Grill', 			['weight'] = 500, 		['type'] = 'item', 		['image'] = 'bbq3.png', 		    		['unique'] = true, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Its not the best, but definitely not the worst either'},
	['bbq4'] 			 			 = {['name'] = 'bbq4', 				    		['label'] = 'Craftguy Grill', 		['weight'] = 500, 		['type'] = 'item', 		['image'] = 'bbq4.png', 		    		['unique'] = true, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'This may create hockey pucks of char'},
	['bbq5'] 			 			 = {['name'] = 'bbq5', 				    		['label'] = 'Brick-Lain Grill', 	['weight'] = 500, 		['type'] = 'item', 		['image'] = 'bbq5.png', 		    		['unique'] = true, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'So youre old fashioned, huh?'},
	
}

```

## Insert Contents of @qb-bbq/Images into @qb-inventory/HTML/Images

## Insert into @qb-smallresources/Config/ConsumeablesEat

``` 
    ["b-hotdog"] = math.random(35, 54),
    ["b-burger"] = math.random(35, 54),
    ["b-brisket"] = math.random(35, 54),
    ["b-chicken"] = math.random(35, 54),
    ["b-ribs"] = math.random(35, 54),
    ["b-jacket"] = math.random(35, 54),

```

## Insert into @qb-smallresources/Server/Consumeables

```
QBCore.Functions.CreateUseableItem("b-burger", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("b-chicken", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("b-hotdog", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("b-ribs", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("b-brisket", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("b-jacket", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", src, item.name)
    end
end)

```

