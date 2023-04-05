Made by Kid Development
[Discord](https://discord.gg/8Z4w5UBGwK)
[Tebex](https://kid-dev.tebex.io/)
[Youtube](https://www.youtube.com/@kiddevelopment)
[CFX](https//forum.cfx.re/u/kiddd_development/activity/topics)


## DEPENDENCIES
[Qb-core](https://github.com/qbcore-framework/qb-core)
[Ox_lib](https://github.com/overextended/ox_lib)
[Rep-tablet](https://github.com/Rep-Scripts/rep-tablet)

## Add it to Config.JobCenter in the rep-tablet

```lua
['fishing'] = {
    vpn = false,
    label = "Fishing",
    event = "kd-fishing:client:fishgps",
    mem = 4,
    count = 0,
    salary = 'high', -- Change it according to the fishing job salary level of your server
    time = {
        first = 5000,
        second = 10000,
    },
    icon = "fas fa-fish"
},
```

## Add this item to your shared item file

```lua
['fishing-rod'] 					 = {['name'] = 'fishing-rod', 			 	  	  	['label'] = 'Fishing Rod', 					['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'fishing-rod.png', 				['unique'] = true, 		['useable'] = true, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'A long stick with a fishing line attached to one end and a fool at the other'},

['fishing-carp'] 					 = {['name'] = 'fishing-carp', 			 	  	  	['label'] = 'Carp', 					['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'fishing-carp.png', 				['unique'] = false, 		['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'The underwater bulldozers that can root up anything in their path, including your hopes of catching anything else'},

['fishing-cat'] 					 = {['name'] = 'fishing-cat', 			 	  	  	['label'] = 'Catfish', 					['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'fishing-cat.png', 				['unique'] = false, 		['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = "Catfish are like the Kardashians of the fish world - they're bottom feeders, but they always manage to stay in the spotlight"},

['fishing-yellowperch'] 					 = {['name'] = 'fishing-yellowperch', 			 	  	  	['label'] = 'Yellow Perch', 					['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'fishing-yellowperch.png', 				['unique'] = false, 		['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = "Yellow Perch are the divas of the fish world - they may be small, but they demand attention with their flashy yellow color and their tendency to strike a pose whenever there's a camera around"},

['fishing-alligator-snapping-turtle'] 					 = {['name'] = 'fishing-alligator-snapping-turtle', 			 	  	  	['label'] = 'Alligator Snapping Turtle', 					['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'fishing-alligator-snapping-turtle.png', 				['unique'] = false, 		['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = "Alligator Snapping Turtles are the grandpas of the turtle world - they're slow, grumpy, and they have a set of dentures that could rival any dentist's collection"},

['fishing-sockeye-salmon'] 					 = {['name'] = 'fishing-sockeye-salmon', 			 	  	  	['label'] = 'Sockeye Salmon', 					['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'fishing-sockeye-salmon.png', 				['unique'] = false, 		['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Sockeye Salmon are the marathon runners of the fish world - they swim thousands of miles to get to their spawning grounds, all while wearing their bright red workout gear and staying perfectly hydrated in the water'},

['fishing-sturgeon'] 					 = {['name'] = 'fishing-sturgeon', 			 	  	  	['label'] = 'Sturgeon', 					['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'fishing-sturgeon.png', 				['unique'] = false, 		['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Green Sturgeon. It looks prehistoric and rare. Maybe it has caviar?'},

['fishing-bluefish'] 					 = {['name'] = 'fishing-bluefish', 			 	  	  	['label'] = 'Bluegill', 					['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'fishing-bluefish.png', 				['unique'] = false, 		['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Bluegill. Catching this took no skill.'},

['fishing-flounder'] 					 = {['name'] = 'fishing-flounder', 			 	  	  	['label'] = 'Flounder', 					['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'fishing-flounder.png', 				['unique'] = false, 		['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'I went fishing and all I got was this lousy flounder'},

['fishing-mackerel'] 					 = {['name'] = 'fishing-mackerel', 			 	  	  	['label'] = 'Mackerel', 					['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'fishing-mackerel.png', 				['unique'] = false, 		['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Sometimes holy'},

['fishing-cod'] 					 = {['name'] = 'fishing-cod', 			 	  	  	['label'] = 'Cod', 					['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'fishing-cod.png', 				['unique'] = false, 		['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Modern Warfare'},

['fishing-whale'] 					 = {['name'] = 'fishing-whale', 			 	  	  	['label'] = 'Baby Whale', 					['weight'] = 1500, 		['type'] = 'item', 		['image'] = 'fishing-whale.png', 				['unique'] = false, 		['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'A fucking whale! Someone might be interested in buying it? Lol, jk. Throw it back. Unless..?'},

['fishing-dolphin'] 					 = {['name'] = 'fishing-dolphin', 			 	  	  	['label'] = 'Baby Dolphin', 					['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'fishing-dolphin.png', 				['unique'] = false, 		['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'A fucking dolphin! Someone might be interested in buying it? Lol, jk. Throw it back. Unless..?'},

['fishing-shark'] 					 = {['name'] = 'fishing-shark', 			 	  	  	['label'] = 'Baby Shark', 					['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'fishing-shark.png', 				['unique'] = false, 		['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'A fucking shark! Someone might be interested in buying it? Lol, jk. Throw it back. Unless..?'},

['fishing_boot'] 					 = {['name'] = 'fishing_boot', 			 	  	  	['label'] = 'Boot', 					['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'fishing_boot.png', 				['unique'] = false, 		['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'The toe is worn through and the leather is worn, but it still tells the story of past adventures with a well-traveled sole'},

['fishing_log'] 					 = {['name'] = 'fishing_log', 			 	  	  	['label'] = 'Log', 					['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'fishing_log.png', 				['unique'] = false, 		['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Who knows, it might be used to build a house?'},

['fishing_tin'] 					 = {['name'] = 'fishing_tin', 			 	  	  	['label'] = 'Tin', 					['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'fishing_tin.png', 				['unique'] = false, 		['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Probably can plant a tree in it, lol'},

['fishing_chest'] 					 = {['name'] = 'fishing_chest', 			 	  	  	['label'] = 'Chest', 					['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'fishing_chest.png', 				['unique'] = false, 		['useable'] = true, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Open it up and try your luck'},
```