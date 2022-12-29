return {
	['testburger'] = {
		label = 'Test Burger',
		weight = 220,
		degrade = 60,
		client = {
			status = { hunger = 200000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500,
			export = 'ox_inventory_examples.testburger'
		},
		server = {
			export = 'ox_inventory_examples.testburger',
			test = 'what an amazingly delicious burger, amirite?'
		},
		buttons = {
			{
				label = 'Lick it',
				action = function(slot)
					print('You licked the burger')
				end
			},
			{
				label = 'Squeeze it',
				action = function(slot)
					print('You squeezed the burger :(')
				end
			}
		},
		consume = 0.3
	},

	['bandage'] = {
		label = 'Bandage',
		weight = 115,
		client = {
			anim = { dict = 'missheistdockssetup1clipboard@idle_a', clip = 'idle_a', flag = 49 },
			prop = { model = `prop_rolled_sock_02`, pos = vec3(-0.14, -0.14, -0.08), rot = vec3(-50.0, -50.0, 0.0) },
			disable = { move = true, car = true, combat = true },
			usetime = 2500,
		}
	},

	['black_money'] = {
		label = 'Dirty Money',
	},

	['burger'] = {
		label = 'Burger',
		weight = 220,
		client = {
			status = { hunger = 200000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500,
			notification = 'You ate a delicious burger'
		},
	},

	['cola'] = {
		label = 'eCola',
		weight = 350,
		client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ecola_can`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'You quenched your thirst with cola'
		}
	},

	['parachute'] = {
		label = 'Parachute',
		weight = 8000,
		stack = false,
		client = {
			anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
			usetime = 1500
		}
	},

	['garbage'] = {
		label = 'Garbage',
	},

	['paperbag'] = {
		label = 'Paper Bag',
		weight = 1,
		stack = false,
		close = false,
		consume = 0
	},

	['identification'] = {
		label = 'Identification',
	},

	['panties'] = {
		label = 'Knickers',
		weight = 10,
		consume = 0,
		client = {
			status = { thirst = -100000, stress = -25000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_cs_panties_02`, pos = vec3(0.03, 0.0, 0.02), rot = vec3(0.0, -13.5, -1.5) },
			usetime = 2500,
		}
	},

	['lockpick'] = {
		label = 'Lockpick',
		weight = 160,
	},

	['phone'] = {
		label = 'Phone',
		weight = 190,
		stack = false,
		consume = 0,
		client = {
			add = function(total)
				if total > 0 then
					pcall(function() return exports.npwd:setPhoneDisabled(false) end)
				end
			end,

			remove = function(total)
				if total < 1 then
					pcall(function() return exports.npwd:setPhoneDisabled(true) end)
				end
			end
		}
	},

	['money'] = {
		label = 'Money',
	},

	['mustard'] = {
		label = 'Mustard',
		weight = 500,
		client = {
			status = { hunger = 25000, thirst = 25000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_food_mustard`, pos = vec3(0.01, 0.0, -0.07), rot = vec3(1.0, 1.0, -1.5) },
			usetime = 2500,
			notification = 'You.. drank mustard'
		}
	},

	['water'] = {
		label = 'Water',
		weight = 500,
		client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ld_flow_bottle`, pos = vec3(0.03, 0.03, 0.02), rot = vec3(0.0, 0.0, -1.5) },
			usetime = 2500,
			cancel = true,
			notification = 'You drank some refreshing water'
		}
	},

	['radio'] = {
		label = 'Radio',
		weight = 1000,
		stack = false,
		allowArmed = true
	},

	['armour'] = {
		label = 'Bulletproof Vest',
		weight = 3000,
		stack = false,
		client = {
			anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
			usetime = 3500
		}
	},

	['clothing'] = {
		label = 'Clothing',
		consume = 0,
	},

	['mastercard'] = {
		label = 'Mastercard',
		stack = false,
		weight = 10,
	},

	['scrapmetal'] = {
		label = 'Scrap Metal',
		weight = 80,
	},

	['dvrcocktail'] = {
		label = 'DVR Cocktail',
		weight = 250,
		stack = true,
		close = true,
		description = "Cyber Bar Is The Best."
	},

	['fishinglootbig'] = {
		label = 'Treasure Chest',
		weight = 2500,
		stack = true,
		close = true,
		description = "The lock seems to be intact, Might need a key"
	},

	['bullhead'] = {
		label = 'Bullhead',
		weight = 150,
		stack = false,
		close = true,
		description = ""
	},

	['irishpub_tequila'] = {
		label = 'Tequila',
		weight = 50,
		stack = true,
		close = false,
		description = ""
	},

	['banana_gumball'] = {
		label = 'Banana GumBall',
		weight = 50,
		stack = true,
		close = true,
		description = "A Banana GumBall from the local Store!"
	},

	['cheese'] = {
		label = 'Cheese',
		weight = 0,
		stack = true,
		close = true,
		description = "Cheese"
	},

	['burger-bun'] = {
		label = 'Bun',
		weight = 125,
		stack = true,
		close = true,
		description = "An Ingredient"
	},

	['xtcbaggy'] = {
		label = 'Bag of XTC',
		weight = 0,
		stack = true,
		close = true,
		description = "Pop those pills baby"
	},

	['ruby_earring2'] = {
		label = 'Old Wet Ruby Earrings',
		weight = 200,
		stack = true,
		close = false,
		description = "This was found fishing, fair and square!"
	},

	['tq_strawberrycup'] = {
		label = 'Cocotq strawberrycupnut',
		weight = 50,
		stack = true,
		close = false,
		description = ""
	},

	['gt-cooked_chicken'] = {
		label = 'Cooked Chicken',
		weight = 100,
		stack = true,
		close = true,
		description = "Might be used to make something"
	},

	['coke_small_brick'] = {
		label = 'Coke Package',
		weight = 350,
		stack = true,
		close = true,
		description = "Small package of cocaine, mostly used for deals and takes a lot of space"
	},

	['radioscanner'] = {
		label = 'Radio Scanner',
		weight = 1000,
		stack = true,
		close = true,
		description = "With this you can get some police alerts. Not 100% effective however"
	},

	['cocaine'] = {
		label = 'Cocaine',
		weight = 25,
		stack = true,
		close = true,
		description = ""
	},

	['sturgeon'] = {
		label = 'Sturgeon',
		weight = 150,
		stack = false,
		close = true,
		description = ""
	},

	['irishpub_coconut'] = {
		label = 'Coconut',
		weight = 50,
		stack = true,
		close = false,
		description = ""
	},

	['blowtorch'] = {
		label = 'Blowtorch',
		weight = 3500,
		stack = false,
		close = false,
		description = "A high propane instrument used for welding and other things..."
	},

	['tq_island_breeze'] = {
		label = 'Island Breeze',
		weight = 50,
		stack = true,
		close = false,
		description = ""
	},

	['irishpub_coffee'] = {
		label = 'Coffee',
		weight = 50,
		stack = true,
		close = false,
		description = ""
	},

	['moneybag'] = {
		label = 'Money Bag',
		weight = 0,
		stack = false,
		close = true,
		description = "A bag with cash"
	},

	['salmon'] = {
		label = 'Salmon',
		weight = 150,
		stack = false,
		close = true,
		description = ""
	},

	['rockbass'] = {
		label = 'Rock Bass',
		weight = 150,
		stack = false,
		close = true,
		description = ""
	},

	['cargrill'] = {
		label = 'Car Grill',
		weight = 850,
		stack = true,
		close = true,
		description = "Front grill chrome alloy from a motor vehicle."
	},

	['diamond_earring_silver2'] = {
		label = 'Old Wet Diamond Earrings Silver',
		weight = 200,
		stack = true,
		close = false,
		description = "This was found fishing, fair and square!"
	},

	['fishbait'] = {
		label = 'Fishing lure',
		weight = 45,
		stack = true,
		close = true,
		description = "Kind of stinks.. pew"
	},

	['labkey'] = {
		label = 'Key',
		weight = 500,
		stack = false,
		close = true,
		description = "Key for a lock...?"
	},

	['emerald_earring2'] = {
		label = 'Old Wet Emerald Earrings',
		weight = 200,
		stack = true,
		close = false,
		description = "This was found fishing, fair and square!"
	},

	['tablet'] = {
		label = 'Tablet',
		weight = 2000,
		stack = true,
		close = true,
		description = "Expensive tablet"
	},

	['newspaper'] = {
		label = 'Newspaper',
		weight = 10,
		stack = true,
		close = true,
		description = "Los Santos Newspaper"
	},

	['fishingloot'] = {
		label = 'Metal Box',
		weight = 500,
		stack = true,
		close = true,
		description = "Seems to be a corroded from the salt water, Should be easy to open"
	},

	['poil'] = {
		label = 'Oil',
		weight = 1000,
		stack = true,
		close = true,
		description = "Oil"
	},

	['bean-agua'] = {
		label = 'Water',
		weight = 1000,
		stack = true,
		close = true,
		description = ""
	},

	['pregularpasta'] = {
		label = 'Regular Pasta',
		weight = 1000,
		stack = true,
		close = true,
		description = "Regular Pasta"
	},

	['tq_milk'] = {
		label = 'Milk',
		weight = 50,
		stack = true,
		close = false,
		description = ""
	},

	['midlog'] = {
		label = 'Medium Pine Log',
		weight = 1200,
		stack = true,
		close = false,
		description = "A medium weighted log of pine."
	},

	['ace'] = {
		label = 'Ace of Spades',
		weight = 100,
		stack = true,
		close = false,
		description = "An old trading card - kinda crusty..."
	},

	['mining_ironfragment'] = {
		label = 'Iron Fragment',
		weight = 500,
		stack = true,
		close = true,
		description = "Iron fragment from mining"
	},

	['pseafoodslice'] = {
		label = 'Seafood Slice',
		weight = 1000,
		stack = true,
		close = true,
		description = "Seafood Slice"
	},

	['pchampagne'] = {
		label = 'Champagne Bottle',
		weight = 1000,
		stack = true,
		close = true,
		description = "Champagne Bottle"
	},

	['pespressomacchiato'] = {
		label = 'Espresso Macchiato',
		weight = 1000,
		stack = true,
		close = true,
		description = "Espresso Macchiato"
	},

	['cupcake-baunilha'] = {
		label = 'Vanilla Cupcake',
		weight = 1000,
		stack = true,
		close = true,
		description = ""
	},

	['brokencup'] = {
		label = 'Broken Cup',
		weight = 500,
		stack = true,
		close = true,
		description = "A nice piece of glasswear... or it would have been if the handle wasn't cracked."
	},

	['whiptailcatfish'] = {
		label = 'Whiptail Catfish',
		weight = 150,
		stack = false,
		close = true,
		description = ""
	},

	['vodka'] = {
		label = 'Vodka',
		weight = 500,
		stack = true,
		close = true,
		description = "For all the thirsty out there"
	},

	['handcuffs'] = {
		label = 'Handcuffs',
		weight = 100,
		stack = true,
		close = true,
		description = "Comes in handy when people misbehave. Maybe it can be used for something else?"
	},

	['carrot'] = {
		label = 'Carrot',
		weight = 25,
		stack = true,
		close = true,
		description = ""
	},

	['pistol1'] = {
		label = 'Pistol Grip',
		weight = 100,
		stack = true,
		close = false,
		description = "The barrel of a Walther P-99 Pistol."
	},

	['treebark'] = {
		label = 'Tree Bark',
		weight = 200,
		stack = true,
		close = false,
		description = "Wooden bark stripped away from what looks like a pine tree."
	},

	['psalt'] = {
		label = 'Salt',
		weight = 1000,
		stack = true,
		close = true,
		description = "Salt"
	},

	['pocketwatch'] = {
		label = 'Pocket Watch',
		weight = 200,
		stack = true,
		close = true,
		description = "A pocket watch"
	},

	['fishtacklebox'] = {
		label = 'Tackle Box',
		weight = 1000,
		stack = true,
		close = true,
		description = "Seems to be left over tackle box from another fisherman"
	},

	['corn_raw'] = {
		label = 'Raw Corn',
		weight = 25,
		stack = true,
		close = true,
		description = ""
	},

	['marijuana'] = {
		label = 'Marijuana',
		weight = 500,
		stack = true,
		close = true,
		description = "Some fine smelling buds."
	},

	['psprite'] = {
		label = 'Sprite',
		weight = 1000,
		stack = true,
		close = true,
		description = "Sprite"
	},

	['thinlog'] = {
		label = 'Thin Pine Log',
		weight = 700,
		stack = true,
		close = false,
		description = "A freshly cut thin log of pine."
	},

	['rubber'] = {
		label = 'Rubber',
		weight = 100,
		stack = true,
		close = false,
		description = "Rubber, I believe you can make your own rubber ducky with it :D"
	},

	['irishpub_island_breeze'] = {
		label = 'Island Breeze',
		weight = 50,
		stack = true,
		close = false,
		description = ""
	},

	['crappie'] = {
		label = 'Crappie',
		weight = 150,
		stack = false,
		close = true,
		description = ""
	},

	['emerald_necklace_silver2'] = {
		label = 'Old Wet Emerald Necklace Silver',
		weight = 200,
		stack = true,
		close = false,
		description = "This was found fishing, fair and square!"
	},

	['finescale'] = {
		label = 'Fine Scale',
		weight = 200,
		stack = true,
		close = false,
		description = "Scale Used for Fine Powders and Materials."
	},

	['yellowslushy'] = {
		label = 'Yellow Slushy',
		weight = 750,
		stack = false,
		close = true,
		description = "Damn a Slushy..."
	},

	['lighter'] = {
		label = 'Lighter',
		weight = 0,
		stack = true,
		close = true,
		description = "On new years eve a nice fire to stand next to"
	},

	['pmilk'] = {
		label = 'Milk',
		weight = 1000,
		stack = true,
		close = true,
		description = "Milk"
	},

	['pwhitewinebottle'] = {
		label = 'White Wine Bottle',
		weight = 1000,
		stack = true,
		close = true,
		description = "White Wine Bottle"
	},

	['mackerel'] = {
		label = 'Mackerel',
		weight = 2500,
		stack = false,
		close = false,
		description = "Mackerel"
	},

	['b-uc-ribs'] = {
		label = 'Raw Ribs',
		weight = 500,
		stack = true,
		close = true,
		description = "A Raw Rack of Ribs"
	},

	['fishingrod'] = {
		label = 'Fishing Rod',
		weight = 2200,
		stack = false,
		close = true,
		description = "finely crafted pole, Made in Baileys!"
	},

	['opmcocktail'] = {
		label = 'One Punch Man Cocktail',
		weight = 250,
		stack = true,
		close = true,
		description = "Cyber Bar Is The Best."
	},

	['dirtymoney'] = {
		label = 'Dirty Money',
		weight = 0,
		stack = true,
		close = false,
		description = "The ill-gotten proceeds of criminal activity."
	},

	['pumpkinseed'] = {
		label = 'Pumpkin Seed Fish',
		weight = 150,
		stack = false,
		close = true,
		description = ""
	},

	['gt-lettuce'] = {
		label = 'Lettuce',
		weight = 100,
		stack = true,
		close = true,
		description = "Might be used to make something"
	},

	['rolling_paper'] = {
		label = 'Rolling Paper',
		weight = 0,
		stack = true,
		close = true,
		description = "Paper made specifically for encasing and smoking tobacco or cannabis."
	},

	['nitrous'] = {
		label = 'Nitrous',
		weight = 1000,
		stack = true,
		close = true,
		description = "Speed up, gas pedal! :D"
	},

	['harness'] = {
		label = 'Race Harness',
		weight = 1000,
		stack = false,
		close = true,
		description = "Racing Harness so no matter what you stay in the car"
	},

	['bulletcasings'] = {
		label = 'Bullet Casings',
		weight = 200,
		stack = true,
		close = false,
		description = "Bullet Casings"
	},

	['carhood'] = {
		label = 'Car Hood',
		weight = 1450,
		stack = true,
		close = true,
		description = "The hood component of a motor vehicle."
	},

	['mining_copperbar'] = {
		label = 'Copper Bar',
		weight = 500,
		stack = true,
		close = true,
		description = "Copper Bar"
	},

	['weed_purple-haze_seed'] = {
		label = 'Purple Haze Seed',
		weight = 0,
		stack = true,
		close = true,
		description = "A weed seed of Purple Haze"
	},

	['trojan_usb'] = {
		label = 'Trojan USB',
		weight = 0,
		stack = true,
		close = true,
		description = "Handy software to shut down some systems"
	},

	['burger-softdrink'] = {
		label = 'Soft Drink',
		weight = 125,
		stack = true,
		close = true,
		description = "An Ice Cold Drink."
	},

	['tq_sugar'] = {
		label = 'Sugar',
		weight = 50,
		stack = true,
		close = false,
		description = ""
	},

	['mining_ironbar'] = {
		label = 'Iron Bar',
		weight = 500,
		stack = true,
		close = true,
		description = "Iron Bar"
	},

	['funkopop_moaningmertle'] = {
		label = 'Moaning Mertle Funkopop',
		weight = 0,
		stack = true,
		close = false,
		description = "Moaning Mertle Funkopop Toy"
	},

	['tq_kiwi_juice'] = {
		label = 'Kiwi Juice',
		weight = 50,
		stack = true,
		close = false,
		description = ""
	},

	['tq_water'] = {
		label = 'Water',
		weight = 50,
		stack = true,
		close = false,
		description = ""
	},

	['gt-enchilada'] = {
		label = 'Enchilada',
		weight = 100,
		stack = true,
		close = true,
		description = "Gunnar really makes some damn good Enchiladas huh?"
	},

	['irishpub_berry_hydrating'] = {
		label = 'Berry Hydrating',
		weight = 50,
		stack = true,
		close = false,
		description = ""
	},

	['potato_raw'] = {
		label = 'Potato Raw',
		weight = 25,
		stack = true,
		close = true,
		description = ""
	},

	['b-uc-hotdog'] = {
		label = 'Raw HotDog',
		weight = 500,
		stack = true,
		close = true,
		description = "A Raw HotDog"
	},

	['bbq1'] = {
		label = 'Forge Djorman',
		weight = 500,
		stack = false,
		close = true,
		description = "For when youre wanting that perfect char-grilled taste"
	},

	['goldearring2'] = {
		label = 'Old Wet Golden Earrings',
		weight = 200,
		stack = true,
		close = false,
		description = "This was found fishing, fair and square!"
	},

	['ruby_necklace_silver2'] = {
		label = 'Old Wet Ruby Necklace Silver',
		weight = 200,
		stack = true,
		close = false,
		description = "This was found fishing, fair and square!"
	},

	['cocaine_seed'] = {
		label = 'Cocaine Seed',
		weight = 25,
		stack = true,
		close = true,
		description = ""
	},

	['garden_shovel'] = {
		label = 'Garden Shovel',
		weight = 25,
		stack = true,
		close = true,
		description = ""
	},

	['samsungtv'] = {
		label = 'Samsung TV',
		weight = 7500,
		stack = true,
		close = true,
		description = "Cool Looking TV"
	},

	['emptybottle'] = {
		label = 'Empty bottle',
		weight = 300,
		stack = true,
		close = false,
		description = "Makes a satisfying crunch when you press on it, not a single drop left..."
	},

	['driver_license'] = {
		label = 'Drivers License',
		weight = 0,
		stack = false,
		close = false,
		description = "Permit to show you can drive a vehicle"
	},

	['gt-beef_combo_meal'] = {
		label = 'Beef Combo Meal',
		weight = 100,
		stack = true,
		close = true,
		description = "Gunnar made a whole combo meal, better hope you get something special..."
	},

	['silverchain2'] = {
		label = 'Old Wet Silver Chain',
		weight = 200,
		stack = true,
		close = false,
		description = "This was found fishing, fair and square!"
	},

	['grape'] = {
		label = 'Grape',
		weight = 100,
		stack = true,
		close = false,
		description = "Mmmmh yummie, grapes"
	},

	['cookiesandcreamicecream'] = {
		label = 'Cookies & Cream Ice Cream',
		weight = 350,
		stack = true,
		close = true,
		description = "A bowl filled with Cookies & Cream Ice Cream!"
	},

	['chicken'] = {
		label = 'Chicken',
		weight = 0,
		stack = true,
		close = true,
		description = "A piece of chicken."
	},

	['fabric'] = {
		label = 'Fabric scrap',
		weight = 150,
		stack = true,
		close = true,
		description = "Looks like someone has thrown an old strip of fabric, must have bought too much?"
	},

	['tq_coffee_heart'] = {
		label = 'Coffee Heart',
		weight = 50,
		stack = true,
		close = false,
		description = ""
	},

	['burger-meat'] = {
		label = 'Cooked Patty',
		weight = 125,
		stack = true,
		close = true,
		description = "An Ingredient"
	},

	['cobia'] = {
		label = 'Cobia',
		weight = 150,
		stack = false,
		close = true,
		description = ""
	},

	['orangeslushy'] = {
		label = 'Orange Slushy',
		weight = 750,
		stack = false,
		close = true,
		description = "Damn a Slushy..."
	},

	['carrot_raw'] = {
		label = 'Carrot Raw',
		weight = 25,
		stack = true,
		close = true,
		description = ""
	},

	['irishpub_orange_juice'] = {
		label = 'Orange Juice',
		weight = 50,
		stack = true,
		close = false,
		description = ""
	},

	['weed_amnesia'] = {
		label = 'Amnesia 2g',
		weight = 200,
		stack = true,
		close = false,
		description = "A weed bag with 2g Amnesia"
	},

	['notepad'] = {
		label = 'Notepad',
		weight = 100,
		stack = true,
		close = 1,
		description = ""
	},

	['sodacan'] = {
		label = 'Soda Can',
		weight = 500,
		stack = true,
		close = true,
		description = "What was once a refreshing beverage is now just a tin can..."
	},

	['papple'] = {
		label = 'Apple',
		weight = 1000,
		stack = true,
		close = true,
		description = "Apple"
	},

	['methtray'] = {
		label = 'Meth Tray',
		weight = 200,
		stack = true,
		close = false,
		description = "make some meth"
	},

	['brokengameboy'] = {
		label = 'Broken Gameboy',
		weight = 200,
		stack = true,
		close = false,
		description = "A Broken Gameboy"
	},

	['prutherfordhill'] = {
		label = 'Rutherford Hill Red Wine',
		weight = 1000,
		stack = true,
		close = true,
		description = "Rutherford Hill Red Wine"
	},

	['electronickit'] = {
		label = 'Electronic Kit',
		weight = 100,
		stack = true,
		close = true,
		description = "If you've always wanted to build a robot you can maybe start here. Maybe you'll be the new Elon Musk?"
	},

	['broccoli'] = {
		label = 'Broccoli',
		weight = 25,
		stack = true,
		close = true,
		description = ""
	},

	['meatlion'] = {
		label = 'Cougar Claws',
		weight = 100,
		stack = true,
		close = false,
		description = "Cougar Claw"
	},

	['rustynails'] = {
		label = 'Rusted Nails',
		weight = 150,
		stack = true,
		close = true,
		description = "A collection of nails that have seen better days... Perhaps they can be cleaned?"
	},

	['bakingsoda'] = {
		label = 'Baking Soda',
		weight = 1500,
		stack = true,
		close = false,
		description = "Household Baking Soda!"
	},

	['greenslushy'] = {
		label = 'Green Slushy',
		weight = 750,
		stack = false,
		close = true,
		description = "Damn a Slushy..."
	},

	['pseafood'] = {
		label = 'Seafood Pizza',
		weight = 1000,
		stack = true,
		close = true,
		description = "Pizza Seafood"
	},

	['gym_membership'] = {
		label = 'Gym Membership',
		weight = 0,
		stack = false,
		close = true,
		description = "Gym Membership for Pump and Run"
	},

	['bbq4'] = {
		label = 'Craftguy Grill',
		weight = 500,
		stack = false,
		close = true,
		description = "This may create hockey pucks of char"
	},

	['meatboar'] = {
		label = 'Boar Tusks',
		weight = 100,
		stack = true,
		close = false,
		description = "Boar Tusks"
	},

	['gt-nachos'] = {
		label = 'Nachos',
		weight = 100,
		stack = true,
		close = true,
		description = "Gunnar really makes some damn good Nachos huh?"
	},

	['mining_copperfragment'] = {
		label = 'Copper Fragment',
		weight = 500,
		stack = true,
		close = true,
		description = "Copper fragment from mining"
	},

	['meth'] = {
		label = 'Meth',
		weight = 500,
		stack = true,
		close = false,
		description = "Really addictive stimulant..."
	},

	['pickle'] = {
		label = 'Pickle',
		weight = 25,
		stack = true,
		close = true,
		description = ""
	},

	['tq_coconut'] = {
		label = 'Coconut',
		weight = 50,
		stack = true,
		close = false,
		description = ""
	},

	['thicklog'] = {
		label = 'Thick Pine Log',
		weight = 1550,
		stack = true,
		close = false,
		description = "A thick, dense log of pine."
	},

	['corn_seed'] = {
		label = 'Corn Seed',
		weight = 25,
		stack = true,
		close = true,
		description = ""
	},

	['tq_cheese'] = {
		label = 'Cheese',
		weight = 50,
		stack = true,
		close = false,
		description = ""
	},

	['irontrash'] = {
		label = 'Iron Trash',
		weight = 200,
		stack = true,
		close = false,
		description = "Trashed Iron"
	},

	['metalscrap'] = {
		label = 'Metal Scrap',
		weight = 100,
		stack = true,
		close = false,
		description = "You can probably make something nice out of this"
	},

	['b-chicken'] = {
		label = 'Chicken Burger',
		weight = 500,
		stack = true,
		close = true,
		description = "A Tender Chicken Burger"
	},

	['carradio'] = {
		label = 'Car Radio',
		weight = 550,
		stack = true,
		close = true,
		description = "A radio equipped to play through changes in radio signals."
	},

	['airfilter'] = {
		label = 'Airfilter',
		weight = 550,
		stack = true,
		close = true,
		description = "A filter to avoid contimaination of airflow into the motor vehicle."
	},

	['gt-soda'] = {
		label = 'Soda',
		weight = 100,
		stack = true,
		close = true,
		description = "The Sodas good huh?"
	},

	['pcoldbrewlatte'] = {
		label = 'Cold Brew Latte',
		weight = 1000,
		stack = true,
		close = true,
		description = "Cold Brew Latte"
	},

	['chewinggum'] = {
		label = 'Old pack of gum',
		weight = 120,
		stack = true,
		close = true,
		description = "An old looking pack of chewing gum... Wouldn't trust it..."
	},

	['ruby_necklace2'] = {
		label = 'Old Wet Ruby Necklace',
		weight = 200,
		stack = true,
		close = false,
		description = "This was found fishing, fair and square!"
	},

	['mulchbag'] = {
		label = 'Bag of Mulch',
		weight = 1200,
		stack = true,
		close = false,
		description = "A tough and heavy bag of tree mulch, ready to be sold."
	},

	['ancientcoin'] = {
		label = 'Ancient Coin',
		weight = 200,
		stack = true,
		close = false,
		description = "This seems really old and unique."
	},

	['heroin_raw'] = {
		label = 'Heroin Raw',
		weight = 25,
		stack = true,
		close = true,
		description = ""
	},

	['pbeermugfull'] = {
		label = 'Beer Mug',
		weight = 1000,
		stack = true,
		close = true,
		description = "Beer Mug"
	},

	['bean-cappuccino'] = {
		label = 'Cappuccino',
		weight = 1000,
		stack = true,
		close = true,
		description = ""
	},

	['chocolateicecream'] = {
		label = 'Chocolate Ice Cream',
		weight = 350,
		stack = true,
		close = true,
		description = "A bowl filled with Chocolate Ice Cream!"
	},

	['tq_chocolate_cake'] = {
		label = 'Chocolate Cake',
		weight = 50,
		stack = true,
		close = false,
		description = ""
	},

	['liquidmix'] = {
		label = 'Liquid Chem Mix',
		weight = 1500,
		stack = true,
		close = false,
		description = "Chemicals, handle with care!"
	},

	['hydrochloric_acid'] = {
		label = 'Hydrochloric Acid',
		weight = 1500,
		stack = true,
		close = true,
		description = "Chemicals, handle with care!"
	},

	['flounder'] = {
		label = 'Flounder',
		weight = 2500,
		stack = false,
		close = false,
		description = "Flounder"
	},

	['sapphire_necklace2'] = {
		label = 'Old Wet Sapphire Necklace',
		weight = 200,
		stack = true,
		close = false,
		description = "This was found fishing, fair and square!"
	},

	['plogger'] = {
		label = 'Logger Beer',
		weight = 1000,
		stack = true,
		close = true,
		description = "Logger Beer"
	},

	['wine'] = {
		label = 'Wine',
		weight = 300,
		stack = true,
		close = false,
		description = "Some good wine to drink on a fine evening"
	},

	['tq_coffee'] = {
		label = 'Coffee',
		weight = 50,
		stack = true,
		close = false,
		description = ""
	},

	['liquorkey'] = {
		label = 'Liquor Storeroom',
		weight = 200,
		stack = true,
		close = false,
		description = "A curious key with the label 'Liquor Storeroom'."
	},

	['pdusche'] = {
		label = 'Dusche Beer',
		weight = 1000,
		stack = true,
		close = true,
		description = "Dusche Beer"
	},

	['kurkakola'] = {
		label = 'Cola',
		weight = 500,
		stack = true,
		close = true,
		description = "For all the thirsty out there"
	},

	['teddy'] = {
		label = 'Teddy bear',
		weight = 150,
		stack = true,
		close = true,
		description = "A teddy bear that appears to be unwanted, still has the tag on it and everything."
	},

	['woodwedge'] = {
		label = 'Log Wedge',
		weight = 350,
		stack = true,
		close = false,
		description = "A wedge of a tree log, freshly cut and smelling like the forest."
	},

	['anchor'] = {
		label = 'Boat Anchor',
		weight = 2500,
		stack = true,
		close = true,
		description = "Boat Anchor"
	},

	['firework3'] = {
		label = 'WipeOut',
		weight = 1000,
		stack = true,
		close = true,
		description = "Fireworks"
	},

	['laptop'] = {
		label = 'Laptop',
		weight = 4000,
		stack = true,
		close = true,
		description = "Expensive laptop"
	},

	['beer'] = {
		label = 'Beer',
		weight = 500,
		stack = true,
		close = true,
		description = "Nothing like a good cold beer!"
	},

	['iphone'] = {
		label = 'iPhone',
		weight = 1000,
		stack = true,
		close = true,
		description = "Very expensive phone"
	},

	['predwinebottle'] = {
		label = ' Regular Red Wine Bottle',
		weight = 1000,
		stack = true,
		close = true,
		description = "Regular Red Wine"
	},

	['pnapollitano'] = {
		label = 'Napollitano Pizza',
		weight = 1000,
		stack = true,
		close = true,
		description = "Napollitano Pizza"
	},

	['b-hotdog'] = {
		label = 'HotDog',
		weight = 500,
		stack = true,
		close = true,
		description = "Topped HotDog"
	},

	['pfresca'] = {
		label = 'Pasta Fresca',
		weight = 1000,
		stack = true,
		close = true,
		description = "Pasta Fresca"
	},

	['funkopop_dumbledore'] = {
		label = 'Dumbledore Funkopop',
		weight = 0,
		stack = true,
		close = false,
		description = "Dumbledore Funkopop Toy"
	},

	['weedkey'] = {
		label = 'Key C',
		weight = 200,
		stack = true,
		close = false,
		description = "Random Key, with a \"Seed\" Engraved on the Back..."
	},

	['headbag'] = {
		label = 'Head Bag',
		weight = 500,
		stack = false,
		close = true,
		description = "A bag to cover someones head"
	},

	['gardengloves'] = {
		label = 'Gardening Gloves',
		weight = 500,
		stack = true,
		close = false,
		description = "A sturdy set of gardening gloves, used to avoid harm when gardening."
	},

	['pcream'] = {
		label = 'Whipped Cream',
		weight = 1000,
		stack = true,
		close = true,
		description = "Whipped Cream"
	},

	['screwdriverset'] = {
		label = 'Toolkit',
		weight = 1000,
		stack = true,
		close = false,
		description = "Very useful to screw... screws..."
	},

	['burger-sodasyrup'] = {
		label = 'Soda Syrup',
		weight = 125,
		stack = true,
		close = true,
		description = "An Ingredient"
	},

	['codfish'] = {
		label = 'Cod',
		weight = 2500,
		stack = false,
		close = false,
		description = "Cod"
	},

	['electronicscrap'] = {
		label = 'Electronic Scrap',
		weight = 100,
		stack = true,
		close = false,
		description = "A couple of wires and a circuit board, might be able to do something with this?"
	},

	['ice-tea-limao'] = {
		label = 'Lemon Ice Tea',
		weight = 1000,
		stack = true,
		close = true,
		description = ""
	},

	['meatpig'] = {
		label = 'Pig Meat',
		weight = 100,
		stack = true,
		close = false,
		description = "Pig Meat"
	},

	['pwhiskey'] = {
		label = 'Whiskey',
		weight = 1000,
		stack = true,
		close = true,
		description = "Whiskey"
	},

	['pvegpizza'] = {
		label = 'Vegetarian Pizza',
		weight = 1000,
		stack = true,
		close = true,
		description = "Vegetarian Pizza"
	},

	['sodium_hydroxide'] = {
		label = 'Sodium Hydroxide',
		weight = 1500,
		stack = true,
		close = true,
		description = "Chemicals, handle with care!"
	},

	['pbbqsouce'] = {
		label = 'BBQ Souce',
		weight = 1000,
		stack = true,
		close = true,
		description = "BBQ Souce"
	},

	['woodenpallet'] = {
		label = 'Wooden Pallet',
		weight = 1000,
		stack = true,
		close = false,
		description = "A sturdy pallet used in storage facilities in order for forklifts to move goods around a warehouse."
	},

	['weed_white-widow_seed'] = {
		label = 'White Widow Seed',
		weight = 0,
		stack = true,
		close = false,
		description = "A weed seed of White Widow"
	},

	['crayons'] = {
		label = 'Crayons',
		weight = 100,
		stack = true,
		close = true,
		description = "A small set of pastel coloured crayons, used to decorate illustrations. Stay within the lines!"
	},

	['tomato'] = {
		label = 'Tomato',
		weight = 0,
		stack = true,
		close = true,
		description = "Tomato"
	},

	['irishpub_banana'] = {
		label = 'Banana',
		weight = 50,
		stack = true,
		close = false,
		description = ""
	},

	['pbigdough'] = {
		label = 'Pizza Dough',
		weight = 1000,
		stack = true,
		close = true,
		description = "Pizza Dough"
	},

	['patochebeer'] = {
		label = 'Patoche Beer',
		weight = 250,
		stack = true,
		close = true,
		description = "Cyber Bar Is The Best."
	},

	['tq_green_dream'] = {
		label = 'Green Dream',
		weight = 50,
		stack = true,
		close = false,
		description = ""
	},

	['diamond_earring2'] = {
		label = 'Old Wet Diamond Earrings',
		weight = 200,
		stack = true,
		close = false,
		description = "This was found fishing, fair and square!"
	},

	['porange'] = {
		label = 'Orange',
		weight = 1000,
		stack = true,
		close = true,
		description = "Orange"
	},

	['marvelcocktail'] = {
		label = 'Marvel Cocktail',
		weight = 250,
		stack = true,
		close = true,
		description = "Cyber Bar Is The Best."
	},

	['woodenplanks'] = {
		label = 'Wooden Planks',
		weight = 1100,
		stack = true,
		close = false,
		description = "A bundle of 4x2 wooden planks with a variety of residential and commercial purposes."
	},

	['goldcoin'] = {
		label = 'Gold coin',
		weight = 200,
		stack = true,
		close = false,
		description = "o.O GOLD!"
	},

	['tq_caramel'] = {
		label = 'Caramel',
		weight = 50,
		stack = true,
		close = false,
		description = ""
	},

	['vitodaiquiri'] = {
		label = 'Vito Daiquiri',
		weight = 250,
		stack = true,
		close = true,
		description = "Cyber Bar Is The Best."
	},

	['mining_drill'] = {
		label = 'Mining Drill',
		weight = 500,
		stack = false,
		close = true,
		description = "Classic's pickaxe for mining"
	},

	['b-uc-brisket'] = {
		label = 'Raw Brisket',
		weight = 500,
		stack = true,
		close = true,
		description = "Raw Brisket Joint"
	},

	['copper'] = {
		label = 'Copper',
		weight = 100,
		stack = true,
		close = false,
		description = "Nice piece of metal that you can probably use for something"
	},

	['heavyarmor'] = {
		label = 'Heavy Armor',
		weight = 5000,
		stack = true,
		close = true,
		description = "Some protection won't hurt... right?"
	},

	['bulletcasing'] = {
		label = 'Bullet casing',
		weight = 400,
		stack = true,
		close = false,
		description = "A used bullet shell... Still in tact though... Interesting."
	},

	['croasant-chocolate'] = {
		label = 'Cholate Croisant',
		weight = 1000,
		stack = true,
		close = true,
		description = ""
	},

	['shroom'] = {
		label = 'Mushroom',
		weight = 40,
		stack = true,
		close = false,
		description = "A strange looking mushroom, smells kind of funky?"
	},

	['pmargharita'] = {
		label = 'Margharita Pizza',
		weight = 1000,
		stack = true,
		close = true,
		description = "Margharita Pizza"
	},

	['cryptostick'] = {
		label = 'Crypto Stick',
		weight = 200,
		stack = false,
		close = true,
		description = "Why would someone ever buy money that doesn't exist.. How many would it contain..?"
	},

	['broccoli_raw'] = {
		label = 'Broccoli Raw',
		weight = 25,
		stack = true,
		close = true,
		description = ""
	},

	['slushy'] = {
		label = 'Slushy',
		weight = 750,
		stack = false,
		close = true,
		description = "A nice cold drink in the coldest place in San Andreas"
	},

	['snapper'] = {
		label = 'Snapper',
		weight = 150,
		stack = false,
		close = true,
		description = ""
	},

	['scarcolada'] = {
		label = 'Scarface Colada',
		weight = 250,
		stack = true,
		close = true,
		description = "Cyber Bar Is The Best."
	},

	['bodycam'] = {
		label = 'PD Body Camera',
		weight = 20,
		stack = true,
		close = true,
		description = "Body Camera"
	},

	['irishpub_watermelon_dream'] = {
		label = 'Watermelon Dream',
		weight = 50,
		stack = true,
		close = false,
		description = ""
	},

	['swordfish'] = {
		label = 'Sword Fish',
		weight = 150,
		stack = false,
		close = true,
		description = ""
	},

	['b-ribs'] = {
		label = 'Spare Ribs',
		weight = 500,
		stack = true,
		close = true,
		description = "A Tangy Rack of Ribs"
	},

	['fitbit'] = {
		label = 'Fitbit',
		weight = 500,
		stack = false,
		close = true,
		description = "I like fitbit"
	},

	['silverearring2'] = {
		label = 'Old Wet Silver Earrings',
		weight = 200,
		stack = true,
		close = false,
		description = "This was found fishing, fair and square!"
	},

	['cherry_gumball'] = {
		label = 'Cherry GumBall',
		weight = 50,
		stack = true,
		close = true,
		description = "A Cherry GumBall from the local Store!"
	},

	['redtailcatfish'] = {
		label = 'Redtail Catfish',
		weight = 150,
		stack = false,
		close = true,
		description = ""
	},

	['blueslushy'] = {
		label = 'Blue Slushy',
		weight = 750,
		stack = false,
		close = true,
		description = "Damn a Slushy..."
	},

	['irishpub_kiwi_juice'] = {
		label = 'Kiwi Juice',
		weight = 50,
		stack = true,
		close = false,
		description = ""
	},

	['goldnuggetpleco'] = {
		label = 'Gold Nugget Pleco',
		weight = 150,
		stack = false,
		close = true,
		description = ""
	},

	['irishpub_orange'] = {
		label = 'Orange',
		weight = 50,
		stack = true,
		close = false,
		description = ""
	},

	['gatecrack'] = {
		label = 'Gatecrack',
		weight = 0,
		stack = true,
		close = true,
		description = "Handy software to tear down some fences"
	},

	['fishingboot'] = {
		label = 'Fishing Boot',
		weight = 2500,
		stack = true,
		close = false,
		description = "Fishing Boot"
	},

	['irishpub_cocktail'] = {
		label = 'Cocktail',
		weight = 50,
		stack = true,
		close = false,
		description = ""
	},

	['coke'] = {
		label = 'Cocaine',
		weight = 1000,
		stack = true,
		close = false,
		description = "Processed cocaine"
	},

	['firework1'] = {
		label = '2Brothers',
		weight = 1000,
		stack = true,
		close = true,
		description = "Fireworks"
	},

	['yellowpurch'] = {
		label = 'Yellow Purch',
		weight = 150,
		stack = false,
		close = true,
		description = ""
	},

	['irishpub_watermelon'] = {
		label = 'Watermelon',
		weight = 50,
		stack = true,
		close = false,
		description = ""
	},

	['broccoli_seed'] = {
		label = 'Broccoli Seed',
		weight = 25,
		stack = true,
		close = true,
		description = ""
	},

	['meat'] = {
		label = 'Meat',
		weight = 0,
		stack = true,
		close = true,
		description = "A slice of meat."
	},

	['mining_stone'] = {
		label = 'Mined Stone',
		weight = 500,
		stack = true,
		close = true,
		description = "Mined Stone"
	},

	['tq_daquiri'] = {
		label = 'Daquiri',
		weight = 50,
		stack = true,
		close = false,
		description = ""
	},

	['bass'] = {
		label = 'Bass',
		weight = 1250,
		stack = false,
		close = false,
		description = "A normal fish Tatses pretty good!"
	},

	['irishpub_cake'] = {
		label = 'Cake',
		weight = 50,
		stack = true,
		close = false,
		description = ""
	},

	['pvegpizzaslice'] = {
		label = 'Vegi Slice',
		weight = 1000,
		stack = true,
		close = true,
		description = "Vegi Slice"
	},

	['fishicebox'] = {
		label = 'Fishing Ice Chest',
		weight = 2500,
		stack = false,
		close = true,
		description = "Ice Box to store all of your fish"
	},

	['glass'] = {
		label = 'Glass',
		weight = 100,
		stack = true,
		close = false,
		description = "It is very fragile, watch out"
	},

	['rolex'] = {
		label = 'Golden Watch',
		weight = 1500,
		stack = true,
		close = true,
		description = "A golden watch seems like the jackpot to me!"
	},

	['duffbeer'] = {
		label = 'Duff Beer',
		weight = 250,
		stack = true,
		close = true,
		description = "Cyber Bar Is The Best."
	},

	['weed_skunk'] = {
		label = 'Skunk 2g',
		weight = 200,
		stack = true,
		close = false,
		description = "A weed bag with 2g Skunk"
	},

	['pmozzarella'] = {
		label = 'Fresh Mozzarella',
		weight = 1000,
		stack = true,
		close = true,
		description = "Fresh Mozzarella"
	},

	['b-burger'] = {
		label = 'Beef Burger',
		weight = 500,
		stack = true,
		close = true,
		description = "A Juicy Beef Burger"
	},

	['grouper'] = {
		label = 'Grouper',
		weight = 150,
		stack = false,
		close = true,
		description = ""
	},

	['panaque'] = {
		label = 'Panaque',
		weight = 150,
		stack = false,
		close = true,
		description = ""
	},

	['gt-tortilla'] = {
		label = 'Tortilla',
		weight = 100,
		stack = true,
		close = true,
		description = "Might be used to make something"
	},

	['weed'] = {
		label = 'Weed',
		weight = 25,
		stack = true,
		close = true,
		description = ""
	},

	['diving_fill'] = {
		label = 'Diving Tube',
		weight = 3000,
		stack = false,
		close = true,
		description = nil
	},

	['meatcow'] = {
		label = 'Cow Pelt',
		weight = 100,
		stack = true,
		close = false,
		description = "Cow Pelt"
	},

	['aluminumoxide'] = {
		label = 'Aluminium Powder',
		weight = 100,
		stack = true,
		close = false,
		description = "Some powder to mix with"
	},

	['gt-coffee'] = {
		label = 'Coffee',
		weight = 100,
		stack = true,
		close = true,
		description = "The Coffees good huh?"
	},

	['chemicalvapor'] = {
		label = 'Chemical Vapors',
		weight = 1500,
		stack = true,
		close = false,
		description = "High Pressure Chemical Vapors, Explosive!"
	},

	['drill'] = {
		label = 'Drill',
		weight = 20000,
		stack = true,
		close = false,
		description = "The real deal..."
	},

	['plastic'] = {
		label = 'Plastic',
		weight = 100,
		stack = true,
		close = false,
		description = "RECYCLE! - Greta Thunberg 2019"
	},

	['snikkel_candy'] = {
		label = 'Snikkel',
		weight = 100,
		stack = true,
		close = true,
		description = "Some delicious candy :O"
	},

	['pictuscatfish'] = {
		label = 'Pictus Catfish',
		weight = 150,
		stack = false,
		close = true,
		description = ""
	},

	['tq_cake'] = {
		label = 'Cake',
		weight = 50,
		stack = true,
		close = false,
		description = ""
	},

	['funkopop_draco'] = {
		label = 'Draco Malfoy Funkopop',
		weight = 0,
		stack = true,
		close = false,
		description = "Draco Malfoy Funkopop Toy"
	},

	['tuna'] = {
		label = 'Tuna',
		weight = 150,
		stack = false,
		close = true,
		description = ""
	},

	['pbbqporkmac'] = {
		label = 'BBQ Pork Mac',
		weight = 1000,
		stack = true,
		close = true,
		description = "BBQ Pork Mac N Cheese"
	},

	['shroombag'] = {
		label = 'Bag of Shrooms',
		weight = 160,
		stack = true,
		close = false,
		description = "A small bag containing hallucinogenic mushrooms."
	},

	['armor'] = {
		label = 'Armor',
		weight = 5000,
		stack = true,
		close = true,
		description = "Some protection won't hurt... right?"
	},

	['carwipers'] = {
		label = 'Windsheild Wipers',
		weight = 250,
		stack = true,
		close = true,
		description = "Looks like these wipers can still be used, not bad."
	},

	['jerry_can'] = {
		label = 'Jerrycan 20L',
		weight = 20000,
		stack = true,
		close = true,
		description = "A can full of Fuel"
	},

	['bristlenosepleco'] = {
		label = 'Bristlenose Pleco',
		weight = 150,
		stack = false,
		close = true,
		description = ""
	},

	['weed_white-widow'] = {
		label = 'White Widow 2g',
		weight = 200,
		stack = true,
		close = false,
		description = "A weed bag with 2g White Widow"
	},

	['painkillers'] = {
		label = 'Painkillers',
		weight = 0,
		stack = true,
		close = true,
		description = "For pain you can't stand anymore, take this pill that'd make you feel great again"
	},

	['funkopop_hagrid'] = {
		label = 'Hagrid Funkopop',
		weight = 0,
		stack = true,
		close = false,
		description = "Hagrid Funkopop Toy"
	},

	['diamond_necklace_silver2'] = {
		label = 'Old Wet Diamond Necklace Silver',
		weight = 200,
		stack = true,
		close = false,
		description = "This was found fishing, fair and square!"
	},

	['funkopop_ron'] = {
		label = 'Ron Funkopop',
		weight = 0,
		stack = true,
		close = false,
		description = "Ron Funkopop Toy"
	},

	['blankusb'] = {
		label = 'Blank USB',
		weight = 0,
		stack = true,
		close = true,
		description = "Non-descript USB, wonder if there is anything on it?"
	},

	['fly_permit'] = {
		label = 'Pilots Permit',
		weight = 0,
		stack = false,
		close = false,
		description = "A Pilots permit to show you can fly a plane as long as you have a passenger with a valid Pilots License"
	},

	['irishpub_chocolate'] = {
		label = 'Chocolate',
		weight = 50,
		stack = true,
		close = false,
		description = ""
	},

	['bluegill'] = {
		label = 'Blue Gill',
		weight = 150,
		stack = false,
		close = true,
		description = ""
	},

	['methkey'] = {
		label = 'Key A',
		weight = 200,
		stack = true,
		close = false,
		description = "Random Key, with \"Walter\" Engraved on the Back..."
	},

	['sharkhammer'] = {
		label = 'Shark',
		weight = 5000,
		stack = false,
		close = false,
		description = "Hammerhead Shark"
	},

	['heroin'] = {
		label = 'Heroin',
		weight = 25,
		stack = true,
		close = true,
		description = ""
	},

	['bean-cha'] = {
		label = 'Tea',
		weight = 1000,
		stack = true,
		close = true,
		description = ""
	},

	['pepperoni'] = {
		label = 'Pepperoni',
		weight = 0,
		stack = true,
		close = true,
		description = "Pepperoni"
	},

	['vanillaicecream'] = {
		label = 'Vanilla Ice Cream',
		weight = 350,
		stack = true,
		close = true,
		description = "A bowl filled with Vanilla Ice Cream!"
	},

	['carbattery'] = {
		label = 'Car Battery',
		weight = 800,
		stack = true,
		close = true,
		description = "A battery used to power motor vehicles. Not sure if this has any charge left."
	},

	['security_card_01'] = {
		label = 'Security Card A',
		weight = 0,
		stack = true,
		close = true,
		description = "A security card... I wonder what it goes to"
	},

	['ziptie'] = {
		label = 'Zip tie',
		weight = 300,
		stack = true,
		close = true,
		description = "A zip tie"
	},

	['pcaramelsyrup'] = {
		label = 'Caramel Syrup',
		weight = 1000,
		stack = true,
		close = true,
		description = "Caramel Syrup"
	},

	['irishpub_coffee_heart'] = {
		label = 'Coffee Heart',
		weight = 50,
		stack = true,
		close = false,
		description = ""
	},

	['tq_watermelon'] = {
		label = 'Watermelon',
		weight = 50,
		stack = true,
		close = false,
		description = ""
	},

	['gt-coffee_beans'] = {
		label = 'Coffee Beans',
		weight = 100,
		stack = true,
		close = true,
		description = "Might be used to make something"
	},

	['gt-ground_beef'] = {
		label = 'Ground Beef',
		weight = 100,
		stack = true,
		close = true,
		description = "Might be used to make something"
	},

	['oldtire'] = {
		label = 'Old worn tire',
		weight = 320,
		stack = true,
		close = true,
		description = "This tire looks like it has seen better days, might be able to salvage some of it..."
	},

	['spoiler'] = {
		label = 'Car Spoiler',
		weight = 1300,
		stack = true,
		close = true,
		description = "A car spoiler used to improve aerodynamics and slip stream performance of a motor vehicle."
	},

	['repairkit'] = {
		label = 'Repairkit',
		weight = 2500,
		stack = true,
		close = true,
		description = "A nice toolbox with stuff to repair your vehicle"
	},

	['trimming_scissors'] = {
		label = 'Trimming Scissors',
		weight = 1500,
		stack = true,
		close = false,
		description = "Very Sharp Trimming Scissors"
	},

	['mining_storage'] = {
		label = 'Mining Storage',
		weight = 500,
		stack = false,
		close = true,
		description = "Classic's washing pan"
	},

	['cardoor'] = {
		label = 'Car Door',
		weight = 1650,
		stack = true,
		close = true,
		description = "A door which has been stripped off a motor vehicle."
	},

	['weed_og-kush_seed'] = {
		label = 'OGKush Seed',
		weight = 0,
		stack = true,
		close = true,
		description = "A weed seed of OG Kush"
	},

	['treemulch'] = {
		label = 'Wooden Mulch',
		weight = 200,
		stack = true,
		close = false,
		description = "An array of roughly cut wooden chunks for pulping purposes."
	},

	['tq_chocolate'] = {
		label = 'Chocolate',
		weight = 50,
		stack = true,
		close = false,
		description = ""
	},

	['emsbag'] = {
		label = 'emsbag',
		weight = 150,
		stack = true,
		close = true,
		description = ""
	},

	['tq_kamikaze'] = {
		label = 'Kamikaze',
		weight = 50,
		stack = true,
		close = false,
		description = ""
	},

	['wet_weed'] = {
		label = 'Moist Weed',
		weight = 3000,
		stack = true,
		close = false,
		description = "Wet weed that needs to be treated!"
	},

	['funkopop_voldemort'] = {
		label = 'Voldemort Funkopop',
		weight = 0,
		stack = true,
		close = false,
		description = "Voldemort Funkopop Toy"
	},

	['irishpub_caramel'] = {
		label = 'Caramel',
		weight = 50,
		stack = true,
		close = false,
		description = ""
	},

	['gt-enchilada_sauce'] = {
		label = 'Enchilada Sauce',
		weight = 100,
		stack = true,
		close = true,
		description = "Might be used to make something"
	},

	['cokebaggy'] = {
		label = 'Bag of Coke',
		weight = 0,
		stack = true,
		close = true,
		description = "To get happy real quick"
	},

	['tomato_seed'] = {
		label = 'Tomato Seed',
		weight = 25,
		stack = true,
		close = true,
		description = ""
	},

	['weaponlicense'] = {
		label = 'Weapon License',
		weight = 0,
		stack = false,
		close = true,
		description = "Weapon License"
	},

	['burger-heartstopper'] = {
		label = 'Heartstopper',
		weight = 2500,
		stack = true,
		close = true,
		description = "Sates Hunger."
	},

	['advancedlockpick'] = {
		label = 'Advanced Lockpick',
		weight = 500,
		stack = true,
		close = true,
		description = "If you lose your keys a lot this is very useful... Also useful to open your beers"
	},

	['fishingkey'] = {
		label = 'Corroded Key',
		weight = 100,
		stack = true,
		close = true,
		description = "A weathered key that looks usefull"
	},

	['id_card'] = {
		label = 'ID Card',
		weight = 0,
		stack = false,
		close = false,
		description = "A card containing all your information to identify yourself"
	},

	['corn'] = {
		label = 'Corn',
		weight = 25,
		stack = true,
		close = true,
		description = ""
	},

	['pcaramelfrappucino'] = {
		label = 'Caramel Frappucino',
		weight = 1000,
		stack = true,
		close = true,
		description = "Caramel Frappucino"
	},

	['tq_ban_straw_juice'] = {
		label = 'Banana & Strawberry Juice',
		weight = 50,
		stack = true,
		close = false,
		description = ""
	},

	['irishpub_coconut_drink'] = {
		label = 'Coconut Drink',
		weight = 50,
		stack = true,
		close = false,
		description = ""
	},

	['tq_banana_nut'] = {
		label = 'banana nut',
		weight = 50,
		stack = true,
		close = false,
		description = ""
	},

	['security_card_02'] = {
		label = 'Security Card B',
		weight = 0,
		stack = true,
		close = true,
		description = "A security card... I wonder what it goes to"
	},

	['chemicals'] = {
		label = 'Chemicals',
		weight = 1500,
		stack = true,
		close = false,
		description = "Chemicals, handle with care..."
	},

	['burger-raw'] = {
		label = 'Raw Patty',
		weight = 125,
		stack = true,
		close = true,
		description = "An Ingredient"
	},

	['gt-soda_syrup'] = {
		label = 'Soda Syrup',
		weight = 100,
		stack = true,
		close = true,
		description = "Might be used to make something"
	},

	['gt-quesadilla'] = {
		label = 'Quesadilla',
		weight = 100,
		stack = true,
		close = true,
		description = "Gunnar really makes some damn good Quesadillas huh?"
	},

	['irishpub_sugar'] = {
		label = 'Sugar',
		weight = 50,
		stack = true,
		close = false,
		description = ""
	},

	['ppizzabase'] = {
		label = 'Pizza Base',
		weight = 1000,
		stack = true,
		close = true,
		description = "Pizza Base"
	},

	['burger-mshakeformula'] = {
		label = 'Milkshake Formula',
		weight = 125,
		stack = true,
		close = true,
		description = "An Ingredient"
	},

	['redslushy'] = {
		label = 'Red Slushy',
		weight = 750,
		stack = false,
		close = true,
		description = "Damn a Slushy..."
	},

	['irishpub_kamikaze'] = {
		label = 'Kamikaze',
		weight = 50,
		stack = true,
		close = false,
		description = ""
	},

	['empty_evidence_bag'] = {
		label = 'Empty Evidence Bag',
		weight = 0,
		stack = true,
		close = false,
		description = "Used a lot to keep DNA from blood, bullet shells and more"
	},

	['onion'] = {
		label = 'Onion',
		weight = 0,
		stack = true,
		close = true,
		description = "Onion"
	},

	['thionyl_chloride'] = {
		label = 'Thionyl Chloride',
		weight = 1500,
		stack = true,
		close = false,
		description = "Chemicals, handle with care!"
	},

	['aluminum'] = {
		label = 'Aluminium',
		weight = 100,
		stack = true,
		close = false,
		description = "Nice piece of metal that you can probably use for something"
	},

	['irishpub_strawberry'] = {
		label = 'Strawberry',
		weight = 50,
		stack = true,
		close = false,
		description = ""
	},

	['sunglasses'] = {
		label = 'Sunnies',
		weight = 100,
		stack = true,
		close = true,
		description = "A pair of what look like expenssive UV spec, designer shades - except they say Gouccy?"
	},

	['pcocacola'] = {
		label = 'Coca Cola',
		weight = 1000,
		stack = true,
		close = true,
		description = "Coca Cola"
	},

	['burger-bleeder'] = {
		label = 'Bleeder',
		weight = 250,
		stack = true,
		close = true,
		description = "Sates Hunger."
	},

	['pporkmeat'] = {
		label = 'Pork Meat',
		weight = 1000,
		stack = true,
		close = true,
		description = "Pork Meat"
	},

	['pbasil'] = {
		label = 'Basil',
		weight = 1000,
		stack = true,
		close = true,
		description = "Basil"
	},

	['pbeermug'] = {
		label = 'Beer Empty Mug',
		weight = 1000,
		stack = true,
		close = true,
		description = "Beer Empty Mug"
	},

	['hotdog'] = {
		label = 'Hotdog',
		weight = 250,
		stack = true,
		close = true,
		description = "Hmmm nice."
	},

	['wheat'] = {
		label = 'Wheat',
		weight = 25,
		stack = true,
		close = true,
		description = ""
	},

	['garden_pitcher'] = {
		label = 'Garden Pitcher',
		weight = 25,
		stack = true,
		close = true,
		description = ""
	},

	['pvegicheese'] = {
		label = 'Vegetarian Cheese',
		weight = 1000,
		stack = true,
		close = true,
		description = "Vegetarian Cheese"
	},

	['gearshift'] = {
		label = 'Gearshift',
		weight = 450,
		stack = true,
		close = true,
		description = "A manual car stick shifter."
	},

	['cupcake-morango'] = {
		label = 'Straberry Cupcake',
		weight = 1000,
		stack = true,
		close = true,
		description = ""
	},

	['pmargharitaslice'] = {
		label = 'Margharita Slice',
		weight = 1000,
		stack = true,
		close = true,
		description = "Margharita Slice"
	},

	['syphoningkit'] = {
		label = 'Syphoning Kit',
		weight = 5000,
		stack = false,
		close = false,
		description = "A kit made to siphon gasoline from vehicles."
	},

	['minticecream'] = {
		label = 'Mint Ice Cream',
		weight = 350,
		stack = true,
		close = true,
		description = "A bowl filled with Mint Ice Cream!"
	},

	['carrot_seed'] = {
		label = 'Carrot Seed',
		weight = 25,
		stack = true,
		close = true,
		description = ""
	},

	['gt-burrito'] = {
		label = 'Burrito',
		weight = 100,
		stack = true,
		close = true,
		description = "Gunnar really makes some damn good Burritos huh?"
	},

	['gt-chicken_combo_meal'] = {
		label = 'Chicken Combo Meal',
		weight = 100,
		stack = true,
		close = true,
		description = "Gunnar made a whole combo meal, better hope you get something special..."
	},

	['burriedtreasure'] = {
		label = 'Sunken Treasure',
		weight = 200,
		stack = true,
		close = false,
		description = "Burried Treasure, woah"
	},

	['blueberry_gumball'] = {
		label = 'Blueberry GumBall',
		weight = 50,
		stack = true,
		close = true,
		description = "A Blueberry GumBall from the local Store!"
	},

	['tq_chocolatecup'] = {
		label = 'chocolatecup',
		weight = 50,
		stack = true,
		close = false,
		description = ""
	},

	['exoticfish'] = {
		label = 'Exotic Fish',
		weight = 1585,
		stack = false,
		close = true,
		description = "Looks like i should throw this one back, might get me in trouble.."
	},

	['mining_goldbar'] = {
		label = 'Gold Bar',
		weight = 500,
		stack = true,
		close = true,
		description = "Gold Bar"
	},

	['irishpub_daquiri'] = {
		label = 'Daquiri',
		weight = 50,
		stack = true,
		close = false,
		description = ""
	},

	['irishpub_redhot_daquiri'] = {
		label = 'Redhot Daquiri',
		weight = 50,
		stack = true,
		close = false,
		description = ""
	},

	['bean-cafe'] = {
		label = 'Coffee',
		weight = 1000,
		stack = true,
		close = true,
		description = ""
	},

	['pwhitewine'] = {
		label = 'White Wine',
		weight = 1000,
		stack = true,
		close = true,
		description = "White Wine"
	},

	['pelbowmacaroni'] = {
		label = 'Elbow Macaroni',
		weight = 1000,
		stack = true,
		close = true,
		description = "Elbow Macaroni"
	},

	['bean-cola'] = {
		label = 'Coke',
		weight = 1000,
		stack = true,
		close = true,
		description = ""
	},

	['pickle_seed'] = {
		label = 'Pickle Seed',
		weight = 25,
		stack = true,
		close = true,
		description = ""
	},

	['ppinkwine'] = {
		label = 'Pink Wine',
		weight = 1000,
		stack = true,
		close = true,
		description = "Pink Wine"
	},

	['walkstick'] = {
		label = 'Walking Stick',
		weight = 1000,
		stack = true,
		close = true,
		description = "Walking stick for ya'll grannies out there.. HAHA"
	},

	['gt-raw_chicken'] = {
		label = 'Raw Chicken',
		weight = 100,
		stack = true,
		close = true,
		description = "Might be used to make something"
	},

	['diamond_ring'] = {
		label = 'Diamond Ring',
		weight = 1500,
		stack = true,
		close = true,
		description = "A diamond ring seems like the jackpot to me!"
	},

	['psparklingwine'] = {
		label = 'Sparkling Wine',
		weight = 1000,
		stack = true,
		close = true,
		description = "Sparkling Wine"
	},

	['fishingtin'] = {
		label = 'Fishing Tin',
		weight = 2500,
		stack = true,
		close = false,
		description = "Fishing Tin"
	},

	['b-jacket'] = {
		label = 'Loaded Jacket',
		weight = 500,
		stack = true,
		close = true,
		description = "A Fully Loaded Jacket Potato"
	},

	['empty_weed_bag'] = {
		label = 'Empty Weed Bag',
		weight = 0,
		stack = true,
		close = true,
		description = "A small empty bag"
	},

	['predwine'] = {
		label = 'Red Wine',
		weight = 1000,
		stack = true,
		close = true,
		description = "Red Wine"
	},

	['weed_amnesia_seed'] = {
		label = 'Amnesia Seed',
		weight = 0,
		stack = true,
		close = true,
		description = "A weed seed of Amnesia"
	},

	['firework2'] = {
		label = 'Poppelers',
		weight = 1000,
		stack = true,
		close = true,
		description = "Fireworks"
	},

	['cocaine_raw'] = {
		label = 'Cocaine Raw',
		weight = 25,
		stack = true,
		close = true,
		description = ""
	},

	['toolbox'] = {
		label = 'Toolbox',
		weight = 150,
		stack = true,
		close = false,
		description = ""
	},

	['goldchain'] = {
		label = 'Golden Chain',
		weight = 1500,
		stack = true,
		close = true,
		description = "A golden chain seems like the jackpot to me!"
	},

	['diving_gear'] = {
		label = 'Diving Gear',
		weight = 30000,
		stack = false,
		close = true,
		description = "An oxygen tank and a rebreather"
	},

	['emerald_necklace2'] = {
		label = 'Old Wet Emerald Necklace',
		weight = 200,
		stack = true,
		close = false,
		description = "This was found fishing, fair and square!"
	},

	['pistol4'] = {
		label = 'Pistol Chassis',
		weight = 100,
		stack = true,
		close = false,
		description = "The chassis of a Walther P-99 Pistol."
	},

	['potato_seed'] = {
		label = 'Potato Seed',
		weight = 25,
		stack = true,
		close = true,
		description = ""
	},

	['marlin'] = {
		label = 'Marlin',
		weight = 150,
		stack = false,
		close = true,
		description = ""
	},

	['pbanana'] = {
		label = 'Banana',
		weight = 1000,
		stack = true,
		close = true,
		description = "Banana"
	},

	['cannabis'] = {
		label = 'Cannabis',
		weight = 2500,
		stack = true,
		close = true,
		description = "Uncured cannabis"
	},

	['pparmesancheese'] = {
		label = 'Parmesan Cheese',
		weight = 1000,
		stack = true,
		close = true,
		description = "Parmesan Cheese"
	},

	['pnapollitanoslice'] = {
		label = 'Napollitano Slice',
		weight = 1000,
		stack = true,
		close = true,
		description = "Napollitano Slice"
	},

	['northernpike'] = {
		label = 'Northern Pike',
		weight = 150,
		stack = false,
		close = true,
		description = ""
	},

	['mint_gumball'] = {
		label = 'Mint GumBall',
		weight = 50,
		stack = true,
		close = true,
		description = "A Mint GumBall from the local Store!"
	},

	['tq_banana_juice'] = {
		label = 'Banana Juice',
		weight = 50,
		stack = true,
		close = false,
		description = ""
	},

	['burger-moneyshot'] = {
		label = 'Moneyshot',
		weight = 300,
		stack = true,
		close = true,
		description = "Sates Hunger."
	},

	['fuelcap'] = {
		label = 'Fuel Cap',
		weight = 160,
		stack = true,
		close = true,
		description = "Used to keep the fuel in the tank, could use a spare couple of these..."
	},

	['ppepper'] = {
		label = 'DR.Pepper',
		weight = 1000,
		stack = true,
		close = true,
		description = "DR.Pepper"
	},

	['halibut'] = {
		label = 'Halibut',
		weight = 150,
		stack = false,
		close = true,
		description = ""
	},

	['walleye'] = {
		label = 'Walleye',
		weight = 150,
		stack = false,
		close = true,
		description = ""
	},

	['ptomatoes'] = {
		label = 'Fresh Tomatoes',
		weight = 1000,
		stack = true,
		close = true,
		description = "Fresh Tomatoes"
	},

	['coke_brick'] = {
		label = 'Coke Brick',
		weight = 1000,
		stack = false,
		close = true,
		description = "Heavy package of cocaine, mostly used for deals and takes a lot of space"
	},

	['tq_strawberry_juice'] = {
		label = 'Strawberry Juice',
		weight = 50,
		stack = true,
		close = false,
		description = ""
	},

	['lawyerpass'] = {
		label = 'Lawyer Pass',
		weight = 0,
		stack = false,
		close = false,
		description = "Pass exclusive to lawyers to show they can represent a suspect"
	},

	['croasant-ovo'] = {
		label = 'Egg Croisant',
		weight = 1000,
		stack = true,
		close = true,
		description = ""
	},

	['burger-lettuce'] = {
		label = 'Lettuce',
		weight = 125,
		stack = true,
		close = true,
		description = "An Ingredient"
	},

	['cleaningkit'] = {
		label = 'Cleaning Kit',
		weight = 250,
		stack = true,
		close = true,
		description = "A microfiber cloth with some soap will let your car sparkle again!"
	},

	['weed_raw'] = {
		label = 'Weed Raw',
		weight = 25,
		stack = true,
		close = true,
		description = ""
	},

	['binoculars'] = {
		label = 'Binoculars',
		weight = 600,
		stack = true,
		close = true,
		description = "Sneaky Breaky..."
	},

	['tq_redhot_daquiri'] = {
		label = 'Redhot Daquiri',
		weight = 50,
		stack = true,
		close = false,
		description = ""
	},

	['pespressocoffeecup'] = {
		label = 'Espresso Coffee Cup',
		weight = 1000,
		stack = true,
		close = true,
		description = "Espresso Coffee Cup"
	},

	['tq_banana'] = {
		label = 'Banana',
		weight = 50,
		stack = true,
		close = false,
		description = ""
	},

	['pmenu'] = {
		label = 'Pizza This Menu',
		weight = 1000,
		stack = true,
		close = true,
		description = "Pizza This Menu"
	},

	['ifaks'] = {
		label = 'ifaks',
		weight = 200,
		stack = true,
		close = true,
		description = "ifaks for healing and a complete stress remover."
	},

	['superdonut'] = {
		label = 'Slucky Bucky Donut',
		weight = 200,
		stack = true,
		close = true,
		description = "A Donut filled with Juices!"
	},

	['tree_bark'] = {
		label = 'Tree Bark',
		weight = 50,
		stack = true,
		close = true,
		description = ""
	},

	['twerks_candy'] = {
		label = 'Twerks',
		weight = 100,
		stack = true,
		close = true,
		description = "Some delicious candy :O"
	},

	['pizzaslice'] = {
		label = 'Pizza Slice',
		weight = 250,
		stack = true,
		close = true,
		description = "Hmmm nice."
	},

	['cocainekey'] = {
		label = 'Key B',
		weight = 200,
		stack = true,
		close = false,
		description = "Random Key, with a \"Razorblade\" Engraved on the Back..."
	},

	['joint'] = {
		label = 'Joint',
		weight = 0,
		stack = true,
		close = true,
		description = "Sidney would be very proud at you"
	},

	['crisps'] = {
		label = 'Chips',
		weight = 250,
		stack = true,
		close = true,
		description = "Hmmm nice."
	},

	['bbq5'] = {
		label = 'Brick-Lain Grill',
		weight = 500,
		stack = false,
		close = true,
		description = "So youre old fashioned, huh?"
	},

	['meatbird'] = {
		label = 'Bird Feather',
		weight = 100,
		stack = true,
		close = false,
		description = "Bird Feather"
	},

	['pseafoodmix'] = {
		label = 'Seafood Mix',
		weight = 1000,
		stack = true,
		close = true,
		description = "Seafood Mix"
	},

	['rabbitfood'] = {
		label = 'Veggie Salad',
		weight = 250,
		stack = true,
		close = true,
		description = "Hmmm nice."
	},

	['irishpub_banana_juice'] = {
		label = 'Banana Juice',
		weight = 50,
		stack = true,
		close = false,
		description = ""
	},

	['pwhiskeybottle'] = {
		label = 'Whiskey Bottle',
		weight = 1000,
		stack = true,
		close = true,
		description = "Whiskey Bottle"
	},

	['dendrogyra_coral'] = {
		label = 'Dendrogyra',
		weight = 1000,
		stack = true,
		close = true,
		description = "Its also known as pillar coral"
	},

	['metaltrash'] = {
		label = 'Metal Trash',
		weight = 200,
		stack = true,
		close = false,
		description = "Trashed Metal"
	},

	['steel'] = {
		label = 'Steel',
		weight = 100,
		stack = true,
		close = false,
		description = "Nice piece of metal that you can probably use for something"
	},

	['pistol2'] = {
		label = 'Slide Assembly',
		weight = 100,
		stack = true,
		close = false,
		description = "The frame of a Walther P-99 Pistol."
	},

	['burger-meatfree'] = {
		label = 'MeatFree',
		weight = 125,
		stack = true,
		close = true,
		description = "Sates Hunger."
	},

	['thermite'] = {
		label = 'Thermite',
		weight = 1000,
		stack = true,
		close = true,
		description = "Sometimes you'd wish for everything to burn"
	},

	['sapphire_necklace_silver2'] = {
		label = 'Old Wet Sapphire Necklace Silver',
		weight = 200,
		stack = true,
		close = false,
		description = "This was found fishing, fair and square!"
	},

	['gt-cooked_beef'] = {
		label = 'Cooked Beef',
		weight = 100,
		stack = true,
		close = true,
		description = "Might be used to make something"
	},

	['irishpub_water'] = {
		label = 'Water',
		weight = 50,
		stack = true,
		close = false,
		description = ""
	},

	['shroombaggy'] = {
		label = 'Empty Bag',
		weight = 100,
		stack = true,
		close = false,
		description = "A small plastic bag, cheap and easy to store perishables temporarily."
	},

	['rainbowslushy'] = {
		label = 'Rainbow Slushy',
		weight = 750,
		stack = false,
		close = true,
		description = "Damn a Slushy..."
	},

	['mining_goldnugget'] = {
		label = 'Golden Nugget',
		weight = 500,
		stack = true,
		close = true,
		description = "Golden nugget from mining"
	},

	['pinger'] = {
		label = 'Pinger',
		weight = 1000,
		stack = true,
		close = true,
		description = "With a pinger and your phone you can send out your location"
	},

	['ppinkwinebottle'] = {
		label = 'Pink Wine Bottle',
		weight = 1000,
		stack = true,
		close = true,
		description = "Pink Wine Bottle"
	},

	['gt-tortilla_chips'] = {
		label = 'Tortilla Chips',
		weight = 100,
		stack = true,
		close = true,
		description = "Might be used to make something"
	},

	['pmushroomspizzaslice'] = {
		label = 'Fungi slice',
		weight = 1000,
		stack = true,
		close = true,
		description = "Fungi Slice"
	},

	['10kgoldchain'] = {
		label = '10k Gold Chain',
		weight = 2000,
		stack = true,
		close = true,
		description = "10 carat golden chain"
	},

	['weed_seed'] = {
		label = 'Weed Seed',
		weight = 25,
		stack = true,
		close = true,
		description = ""
	},

	['irishpub_chocolate_cake'] = {
		label = 'Chocolate Cake',
		weight = 50,
		stack = true,
		close = false,
		description = ""
	},

	['pistol3'] = {
		label = 'Slide',
		weight = 100,
		stack = true,
		close = false,
		description = "The grip of a Walther P-99 Pistol."
	},

	['weed_ak47'] = {
		label = 'AK47 2g',
		weight = 200,
		stack = true,
		close = false,
		description = "A weed bag with 2g AK47"
	},

	['heartysandwich'] = {
		label = 'Hearty Sandwich',
		weight = 250,
		stack = true,
		close = true,
		description = "Hmmm nice."
	},

	['phighcoffeeglasscup'] = {
		label = 'High Coffee Glass',
		weight = 1000,
		stack = true,
		close = true,
		description = "Empty High Coffee Glass"
	},

	['emerald_earring_silver2'] = {
		label = 'Old Wet Emerald Earrings Silver',
		weight = 200,
		stack = true,
		close = false,
		description = "This was found fishing, fair and square!"
	},

	['brokenphone'] = {
		label = 'Broken Phone',
		weight = 200,
		stack = true,
		close = false,
		description = "Broken Phone"
	},

	['weed_ak47_seed'] = {
		label = 'AK47 Seed',
		weight = 0,
		stack = true,
		close = true,
		description = "A weed seed of AK47"
	},

	['antipatharia_coral'] = {
		label = 'Antipatharia',
		weight = 1000,
		stack = true,
		close = true,
		description = "Its also known as black corals or thorn corals"
	},

	['ww2relic'] = {
		label = 'WW2 Relic',
		weight = 200,
		stack = true,
		close = false,
		description = "I rememeber this from history class."
	},

	['irishpub_cheese'] = {
		label = 'Cheese',
		weight = 50,
		stack = true,
		close = false,
		description = ""
	},

	['wd40'] = {
		label = 'WD-40',
		weight = 250,
		stack = false,
		close = false,
		description = "A chemical compound with multiple purposes, including the removal of corrosion."
	},

	['gt-seasoning'] = {
		label = 'Seasoning',
		weight = 100,
		stack = true,
		close = true,
		description = "Might be used to make something"
	},

	['burger-tomato'] = {
		label = 'Tomato',
		weight = 125,
		stack = true,
		close = true,
		description = "An Ingredient"
	},

	['actiontoy'] = {
		label = 'Action figure',
		weight = 350,
		stack = true,
		close = false,
		description = "An old toy, looks kinda neat - might be valuable?"
	},

	['ppizzaflour'] = {
		label = 'Pizza Flour',
		weight = 1000,
		stack = true,
		close = true,
		description = "Pizza Flour"
	},

	['gt-salsa'] = {
		label = 'Salsa',
		weight = 100,
		stack = true,
		close = true,
		description = "Might be used to make something"
	},

	['pmushrooms'] = {
		label = 'Mushrooms',
		weight = 1000,
		stack = true,
		close = true,
		description = "Mushrooms"
	},

	['tq_just_peachy'] = {
		label = 'Just Peachy',
		weight = 50,
		stack = true,
		close = false,
		description = ""
	},

	['aluminumcan'] = {
		label = 'Aluminium Can',
		weight = 200,
		stack = true,
		close = false,
		description = "Alumunim Cans"
	},

	['pstrawberryvanillaoatlatte'] = {
		label = 'Strawberry Vanilla Oat Latte',
		weight = 1000,
		stack = true,
		close = true,
		description = "Strawberry Vanilla Oat Latte"
	},

	['pdough'] = {
		label = 'Ready Pizza Dough',
		weight = 1000,
		stack = true,
		close = true,
		description = "Ready Pizza Dough"
	},

	['pcheddarcheese'] = {
		label = 'Cheddar Cheese',
		weight = 1000,
		stack = true,
		close = true,
		description = "Cheddar Cheese"
	},

	['stickynote'] = {
		label = 'Sticky note',
		weight = 0,
		stack = false,
		close = false,
		description = "Sometimes handy to remember something :)"
	},

	['water_bottle'] = {
		label = 'Bottle of Water',
		weight = 500,
		stack = true,
		close = true,
		description = "For all the thirsty out there"
	},

	['ptomatosouce'] = {
		label = 'Tomato Souce',
		weight = 1000,
		stack = true,
		close = true,
		description = "Tomato Souce"
	},

	['irishpub_kiwi'] = {
		label = 'Kiwi',
		weight = 50,
		stack = true,
		close = false,
		description = ""
	},

	['wahoo'] = {
		label = 'Wahoo',
		weight = 150,
		stack = false,
		close = true,
		description = ""
	},

	['weed_purple-haze'] = {
		label = 'Purple Haze 2g',
		weight = 200,
		stack = true,
		close = false,
		description = "A weed bag with 2g Purple Haze"
	},

	['ironoxide'] = {
		label = 'Iron Powder',
		weight = 100,
		stack = true,
		close = false,
		description = "Some powder to mix with."
	},

	['funkopop_snape'] = {
		label = 'Severus Snape Funkopop',
		weight = 0,
		stack = true,
		close = false,
		description = "Severus Snape Funkopop Toy"
	},

	['samsungphone'] = {
		label = 'Samsung S10',
		weight = 1000,
		stack = true,
		close = true,
		description = "Very expensive phone"
	},

	['yoshishooter'] = {
		label = 'Yoshi Shooter',
		weight = 250,
		stack = true,
		close = true,
		description = "Cyber Bar Is The Best."
	},

	['tq_berry_hydrating'] = {
		label = 'Berry Hydrating',
		weight = 50,
		stack = true,
		close = false,
		description = ""
	},

	['whiskey'] = {
		label = 'Whiskey',
		weight = 500,
		stack = true,
		close = true,
		description = "For all the thirsty out there"
	},

	['dolphin'] = {
		label = 'Dolphin',
		weight = 5000,
		stack = false,
		close = false,
		description = "Dolphin"
	},

	['burger-potato'] = {
		label = 'Bag of Potatoes',
		weight = 1500,
		stack = true,
		close = true,
		description = "An Ingredient"
	},

	['firework4'] = {
		label = 'Weeping Willow',
		weight = 1000,
		stack = true,
		close = true,
		description = "Fireworks"
	},

	['visa'] = {
		label = 'Visa Card',
		weight = 0,
		stack = false,
		close = false,
		description = "Visa can be used via ATM"
	},

	['heroin_seed'] = {
		label = 'Heroin Seed',
		weight = 25,
		stack = true,
		close = true,
		description = ""
	},

	['dbcocktail'] = {
		label = 'Dragon Ball Cocktail',
		weight = 250,
		stack = true,
		close = true,
		description = "Cyber Bar Is The Best."
	},

	['gt-nacho_cheese'] = {
		label = 'Nacho Cheese',
		weight = 100,
		stack = true,
		close = true,
		description = "Might be used to make something"
	},

	['jbcocktail'] = {
		label = 'James Bond Cocktail',
		weight = 250,
		stack = true,
		close = true,
		description = "Cyber Bar Is The Best."
	},

	['pcastellobrolio'] = {
		label = 'Castello Brolio Red Wine',
		weight = 1000,
		stack = true,
		close = true,
		description = "Castello Brolio Red Wine"
	},

	['pmacncheese'] = {
		label = 'Mac N Cheese',
		weight = 1000,
		stack = true,
		close = true,
		description = "Mac N Cheese"
	},

	['hulkcocktail'] = {
		label = 'Hulk Cocktail',
		weight = 250,
		stack = true,
		close = true,
		description = "Cyber Bar Is The Best."
	},

	['firstaid'] = {
		label = 'First Aid',
		weight = 2500,
		stack = true,
		close = true,
		description = "You can use this First Aid kit to get people back on their feet"
	},

	['milkdragon'] = {
		label = 'Milk Dragon',
		weight = 250,
		stack = true,
		close = true,
		description = "Cyber Bar Is The Best."
	},

	['sparkplugs'] = {
		label = 'Sparkplugs',
		weight = 250,
		stack = true,
		close = true,
		description = "Car part generating electrical spark for combustion of motor vehicle fuel."
	},

	['tq_cocktail'] = {
		label = 'Cocktail',
		weight = 50,
		stack = true,
		close = false,
		description = ""
	},

	['printerdocument'] = {
		label = 'Document',
		weight = 500,
		stack = false,
		close = true,
		description = "A nice document"
	},

	['carengine'] = {
		label = 'Engine Block',
		weight = 2250,
		stack = true,
		close = true,
		description = "Combustion engine from a motor vehicle."
	},

	['police_stormram'] = {
		label = 'Stormram',
		weight = 18000,
		stack = true,
		close = true,
		description = "A nice tool to break into doors"
	},

	['emptymulchbag'] = {
		label = 'Empty Mulch Bag',
		weight = 200,
		stack = true,
		close = false,
		description = "A tough and durable bag capable of holding many kilograms of product."
	},

	['tq_watermelon_dream'] = {
		label = 'Watermelon Dream',
		weight = 50,
		stack = true,
		close = false,
		description = ""
	},

	['tq_orange'] = {
		label = 'Orange',
		weight = 50,
		stack = true,
		close = false,
		description = ""
	},

	['certificate'] = {
		label = 'Certificate',
		weight = 0,
		stack = true,
		close = true,
		description = "Certificate that proves you own certain stuff"
	},

	['tomato_raw'] = {
		label = 'Tomato Raw',
		weight = 25,
		stack = true,
		close = true,
		description = ""
	},

	['tq_coconut_drink'] = {
		label = 'Coconut Drink',
		weight = 50,
		stack = true,
		close = false,
		description = ""
	},

	['panqueca-nutela'] = {
		label = 'Nutela Pancake',
		weight = 1000,
		stack = true,
		close = true,
		description = ""
	},

	['govbadge'] = {
		label = 'Government ID',
		weight = 1000,
		stack = true,
		close = true,
		description = "Special Badge for Government Officials"
	},

	['sailfish'] = {
		label = 'Sail Fish',
		weight = 150,
		stack = false,
		close = true,
		description = ""
	},

	['tq_tequila'] = {
		label = 'Tequila',
		weight = 50,
		stack = true,
		close = false,
		description = ""
	},

	['markedbills'] = {
		label = 'Marked Money',
		weight = 1000,
		stack = false,
		close = true,
		description = "Money?"
	},

	['weed_og-kush'] = {
		label = 'OGKush 2g',
		weight = 200,
		stack = true,
		close = false,
		description = "A weed bag with 2g OG Kush"
	},

	['carjack'] = {
		label = 'Car Jack',
		weight = 1000,
		stack = true,
		close = true,
		description = "A battery used to power motor vehicles. Not sure if this has any charge left."
	},

	['tree_lumber'] = {
		label = 'Lumber',
		weight = 50,
		stack = true,
		close = true,
		description = ""
	},

	['goldennugget'] = {
		label = 'The Mojave Nugget',
		weight = 200,
		stack = true,
		close = false,
		description = "This seems valuable, hmm"
	},

	['bbq2'] = {
		label = 'Leetle Grill',
		weight = 500,
		stack = false,
		close = true,
		description = "Who likes tiny portable grills? We do"
	},

	['tq_orange_juice'] = {
		label = 'Orange Juice',
		weight = 50,
		stack = true,
		close = false,
		description = ""
	},

	['gt-beef_taco'] = {
		label = 'Beef Taco',
		weight = 100,
		stack = true,
		close = true,
		description = "Gunnar really makes some damn good Beef Tacos huh?"
	},

	['b-uc-burger'] = {
		label = 'Raw Burger',
		weight = 500,
		stack = true,
		close = true,
		description = "A Raw Patty of Beef"
	},

	['wallet'] = {
		label = 'Old Wallet',
		weight = 350,
		stack = true,
		close = false,
		description = "Feels like leather... Clearly been used and abused though..."
	},

	['ice-tea-pessego'] = {
		label = 'Peach Ice Tea',
		weight = 1000,
		stack = true,
		close = true,
		description = ""
	},

	['gt-chicken_taco'] = {
		label = 'Chicken Taco',
		weight = 100,
		stack = true,
		close = true,
		description = "Gunnar really makes some damn good Chicken Tacos huh?"
	},

	['iron'] = {
		label = 'Iron',
		weight = 100,
		stack = true,
		close = false,
		description = "Handy piece of metal that you can probably use for something"
	},

	['b-uc-jacket'] = {
		label = 'Raw Jacket',
		weight = 500,
		stack = true,
		close = true,
		description = "A Raw Jacket Potato"
	},

	['prum'] = {
		label = 'Rum',
		weight = 1000,
		stack = true,
		close = true,
		description = "Rum"
	},

	['pcoffeebeans'] = {
		label = 'Coffee Beans',
		weight = 1000,
		stack = true,
		close = true,
		description = "Coffee Beans"
	},

	['bean-latte'] = {
		label = 'Latte',
		weight = 1000,
		stack = true,
		close = true,
		description = ""
	},

	['fly'] = {
		label = 'Pilots License',
		weight = 0,
		stack = false,
		close = false,
		description = "A Pilots permit to show you can fly a plane as long as you have a passenger with a valid Pilots License"
	},

	['gt-refried_beans'] = {
		label = 'Refried Beans',
		weight = 100,
		stack = true,
		close = true,
		description = "Might be used to make something"
	},

	['burger-fries'] = {
		label = 'Fries',
		weight = 125,
		stack = true,
		close = true,
		description = "Sates Hunger."
	},

	['sharktiger'] = {
		label = 'Shark',
		weight = 5000,
		stack = false,
		close = false,
		description = "Tigershark"
	},

	['pickle_raw'] = {
		label = 'Pickle Raw',
		weight = 25,
		stack = true,
		close = true,
		description = ""
	},

	['bbq3'] = {
		label = 'Stand Grill',
		weight = 500,
		stack = false,
		close = true,
		description = "Its not the best, but definitely not the worst either"
	},

	['sapphire_earring2'] = {
		label = 'Old Wet Sapphire Earrings',
		weight = 200,
		stack = true,
		close = false,
		description = "This was found fishing, fair and square!"
	},

	['pgoldsake'] = {
		label = 'Gold Sake',
		weight = 1000,
		stack = true,
		close = true,
		description = "Gold Sake"
	},

	['funkopop_hedwig'] = {
		label = 'Hedwig Funkopop',
		weight = 0,
		stack = true,
		close = false,
		description = "Hedwig Funkopop Toy"
	},

	['tq_strawberry'] = {
		label = 'Strawberry',
		weight = 50,
		stack = true,
		close = false,
		description = ""
	},

	['lsd'] = {
		label = 'LSD',
		weight = 500,
		stack = true,
		close = false,
		description = "Lets get this party started!"
	},

	['meatrabbit'] = {
		label = 'Rabbit Fur',
		weight = 100,
		stack = true,
		close = false,
		description = "Rabbit Fur"
	},

	['mahimahi'] = {
		label = 'Mahi-Mahi',
		weight = 150,
		stack = false,
		close = true,
		description = ""
	},

	['pam'] = {
		label = 'AM Beer',
		weight = 1000,
		stack = true,
		close = true,
		description = "AM Beer"
	},

	['gt-cheese'] = {
		label = 'Cheese',
		weight = 100,
		stack = true,
		close = true,
		description = "Might be used to make something"
	},

	['weed_brick'] = {
		label = 'Weed Brick',
		weight = 1000,
		stack = true,
		close = true,
		description = "1KG Weed Brick to sell to large customers."
	},

	['coca_leaf'] = {
		label = 'Cocaine leaves',
		weight = 1500,
		stack = true,
		close = false,
		description = "Cocaine leaves that must be processed !"
	},

	['sapphire_earring_silver2'] = {
		label = 'Old Wet Sapphire Earrings Silver',
		weight = 200,
		stack = true,
		close = false,
		description = "This was found fishing, fair and square!"
	},

	['weed_skunk_seed'] = {
		label = 'Skunk Seed',
		weight = 0,
		stack = true,
		close = true,
		description = "A weed seed of Skunk"
	},

	['diamond_necklace2'] = {
		label = 'Old Wet Diamond Necklace',
		weight = 200,
		stack = true,
		close = false,
		description = "This was found fishing, fair and square!"
	},

	['irishpub_green_dream'] = {
		label = 'Green Dream',
		weight = 50,
		stack = true,
		close = false,
		description = ""
	},

	['sulfuric_acid'] = {
		label = 'Sulfuric Acid',
		weight = 1500,
		stack = true,
		close = false,
		description = "Chemicals, handle with care!"
	},

	['pbutter'] = {
		label = 'Butter',
		weight = 1000,
		stack = true,
		close = true,
		description = "Butter"
	},

	['diamond'] = {
		label = 'Diamond',
		weight = 1000,
		stack = true,
		close = true,
		description = "A diamond seems like the jackpot to me!"
	},

	['casinochips'] = {
		label = 'Casino Chips',
		weight = 0,
		stack = true,
		close = false,
		description = "Chips For Casino Gambling"
	},

	['housekeys'] = {
		label = 'House Keys',
		weight = 200,
		stack = true,
		close = false,
		description = "Random House Keys"
	},

	['poppyresin'] = {
		label = 'Poppy resin',
		weight = 2000,
		stack = true,
		close = false,
		description = "It sticks to your fingers when you handle it."
	},

	['lsa'] = {
		label = 'LSA',
		weight = 500,
		stack = true,
		close = false,
		description = "Almost ready to party..."
	},

	['pcoffeeglass'] = {
		label = 'Coffee Glass',
		weight = 1000,
		stack = true,
		close = true,
		description = "Empty Coffee Glass"
	},

	['grapejuice'] = {
		label = 'Grape Juice',
		weight = 200,
		stack = true,
		close = false,
		description = "Grape juice is said to be healthy"
	},

	['burger-mshake'] = {
		label = 'Milkshake',
		weight = 125,
		stack = true,
		close = true,
		description = "Hand-scooped for you!"
	},

	['irishpub_milk'] = {
		label = 'Milk',
		weight = 50,
		stack = true,
		close = false,
		description = ""
	},

	['irishpub_ban_straw_juice'] = {
		label = 'Banana & Strawberry Juice',
		weight = 50,
		stack = true,
		close = false,
		description = ""
	},

	['brokenknife'] = {
		label = 'Broken Knife',
		weight = 200,
		stack = true,
		close = false,
		description = "Rusted Knife"
	},

	['panqueca-mel'] = {
		label = 'Honey Pancake',
		weight = 1000,
		stack = true,
		close = true,
		description = ""
	},

	['stingray'] = {
		label = 'Stingray',
		weight = 2500,
		stack = false,
		close = false,
		description = "Stingray"
	},

	['wood_plank'] = {
		label = 'Wood Plank',
		weight = 50,
		stack = true,
		close = true,
		description = ""
	},

	['potato'] = {
		label = 'Potato',
		weight = 25,
		stack = true,
		close = true,
		description = ""
	},

	['musky'] = {
		label = 'Musky',
		weight = 150,
		stack = false,
		close = true,
		description = ""
	},

	['b-brisket'] = {
		label = 'Brisket Joint',
		weight = 500,
		stack = true,
		close = true,
		description = "Nicely Cooked Brisket"
	},

	['huntingbait'] = {
		label = 'Hunting Bait',
		weight = 150,
		stack = true,
		close = true,
		description = "Hunting Bait"
	},

	['coffee'] = {
		label = 'Coffee',
		weight = 200,
		stack = true,
		close = true,
		description = "Pump 4 Caffeine"
	},

	['lettuce'] = {
		label = 'Lettuce',
		weight = 0,
		stack = true,
		close = true,
		description = "Lettuce"
	},

	['irishpub_strawberry_juice'] = {
		label = 'Strawberry Juice',
		weight = 50,
		stack = true,
		close = false,
		description = ""
	},

	['filled_evidence_bag'] = {
		label = 'Evidence Bag',
		weight = 200,
		stack = false,
		close = false,
		description = "A filled evidence bag to see who committed the crime >:("
	},

	['b-uc-chicken'] = {
		label = 'Raw Chicken Burger',
		weight = 500,
		stack = true,
		close = true,
		description = "A Raw Chicken Patty"
	},

	['wheat_seed'] = {
		label = 'Wheat Seed',
		weight = 25,
		stack = true,
		close = true,
		description = ""
	},

	['pwater'] = {
		label = 'Water',
		weight = 1000,
		stack = true,
		close = true,
		description = "Water"
	},

	['advancedrepairkit'] = {
		label = 'Advanced Repairkit',
		weight = 4000,
		stack = true,
		close = true,
		description = "A nice toolbox with stuff to repair your vehicle"
	},

	['pwatercup'] = {
		label = 'Water Cup',
		weight = 1000,
		stack = true,
		close = true,
		description = "Water Cup"
	},

	['tissuebox'] = {
		label = 'Tissue Box',
		weight = 100,
		stack = true,
		close = true,
		description = "An old box of tissues... Wonderful..."
	},

	['screwdriver'] = {
		label = 'Screwdriver',
		weight = 100,
		stack = true,
		close = false,
		description = "A flathead screwdriver. I mean sure the handle is a bit worn but this thing probably works."
	},

	['irishpub_just_peachy'] = {
		label = 'Just Peachy',
		weight = 50,
		stack = true,
		close = false,
		description = ""
	},

	['burger-torpedo'] = {
		label = 'Torpedo',
		weight = 310,
		stack = true,
		close = true,
		description = "Sates Hunger."
	},

	['bubblegum_gumball'] = {
		label = 'BubbleGum GumBall',
		weight = 50,
		stack = true,
		close = true,
		description = "A BubbleGum GumBall from the local Store!"
	},

	['pmushroomspizza'] = {
		label = 'Mushrooms Pizza',
		weight = 1000,
		stack = true,
		close = true,
		description = "Mushrooms Pizza"
	},

	['oxy'] = {
		label = 'Prescription Oxy',
		weight = 0,
		stack = true,
		close = true,
		description = "The Label Has Been Ripped Off"
	},

	['sandwich'] = {
		label = 'Sandwich',
		weight = 200,
		stack = true,
		close = true,
		description = "Nice bread for your stomach"
	},

	['bottlecaps'] = {
		label = 'Bottle caps',
		weight = 300,
		stack = true,
		close = true,
		description = "Some plastic caps for what looks like a variety of soda bottles."
	},

	['tq_kiwi'] = {
		label = 'Kiwi',
		weight = 50,
		stack = true,
		close = false,
		description = ""
	},

	['carrim'] = {
		label = 'Sports Rim',
		weight = 850,
		stack = true,
		close = true,
		description = "A chrome rim alloy."
	},

	['wheelchair'] = {
		label = 'wheelchair',
		weight = 500,
		stack = false,
		close = true,
		description = "Crip Gang"
	},

	['bread'] = {
		label = 'Bread',
		weight = 0,
		stack = true,
		close = true,
		description = "A slice of bread."
	},

	['crack_baggy'] = {
		label = 'Bag of Crack',
		weight = 0,
		stack = true,
		close = true,
		description = "To get happy faster"
	},

	['hamburger'] = {
		label = 'Hamburger',
		weight = 250,
		stack = true,
		close = true,
		description = "Hmmm nice."
	},

	['pgaryfarrel'] = {
		label = 'Gary Garrel Red Wine',
		weight = 1000,
		stack = true,
		close = true,
		description = "Gary Farrel Red Wine"
	},

	['meatdeer'] = {
		label = 'Deer Horns',
		weight = 100,
		stack = true,
		close = false,
		description = "Deer Horns"
	},

	['bean-mocha'] = {
		label = 'Mocha',
		weight = 1000,
		stack = true,
		close = true,
		description = ""
	},

	['thickerlog'] = {
		label = 'Thicker Pine Log',
		weight = 2200,
		stack = true,
		close = false,
		description = "The thickest cut of pine achievable with a hand axe."
	},

	['tq_island_fantasy'] = {
		label = 'Island Fantasy',
		weight = 50,
		stack = true,
		close = false,
		description = ""
	},

	['bean-sprunk'] = {
		label = 'Sprunk',
		weight = 1000,
		stack = true,
		close = true,
		description = ""
	},

	['goldbar'] = {
		label = 'Gold Bar',
		weight = 7000,
		stack = true,
		close = true,
		description = "Looks pretty expensive to me"
	},

	['weed_nutrition'] = {
		label = 'Plant Fertilizer',
		weight = 2000,
		stack = true,
		close = true,
		description = "Plant nutrition"
	},

	['muffin-chocolate'] = {
		label = 'Chocolate Muffin',
		weight = 1000,
		stack = true,
		close = true,
		description = ""
	},

	['meatcoyote'] = {
		label = 'Coyote Pelt',
		weight = 100,
		stack = true,
		close = false,
		description = "Coyote Pelt"
	},

	['tunerlaptop'] = {
		label = 'Tunerchip',
		weight = 2000,
		stack = false,
		close = true,
		description = "With this tunerchip you can get your car on steroids... If you know what you're doing"
	},

	['pwineglass'] = {
		label = 'Wine Glass',
		weight = 1000,
		stack = true,
		close = true,
		description = "Wine Glass"
	},

	['killerwhale'] = {
		label = 'Whale',
		weight = 15000,
		stack = false,
		close = false,
		description = "Killer Whale"
	},

	['pwhiskyglass'] = {
		label = 'Whiskey Glass',
		weight = 1000,
		stack = true,
		close = true,
		description = "Whiskey Glass"
	},

	['funkopop_harrypotter'] = {
		label = 'Harry Potter Funkopop',
		weight = 0,
		stack = true,
		close = false,
		description = "Harry Potter Funkopop Toy"
	},

	['funkopop_hermione'] = {
		label = 'Hermione Funkopop',
		weight = 0,
		stack = true,
		close = false,
		description = "Hermione Funkopop Toy"
	},

	['tosti'] = {
		label = 'Grilled Cheese Sandwich',
		weight = 200,
		stack = true,
		close = true,
		description = "Nice to eat"
	},

	['wheat_raw'] = {
		label = 'Wheat Raw',
		weight = 25,
		stack = true,
		close = true,
		description = ""
	},

	['irishpub_island_fantasy'] = {
		label = 'Island Fantasy',
		weight = 50,
		stack = true,
		close = false,
		description = ""
	},

	['ruby_earring_silver2'] = {
		label = 'Old Wet Ruby Earrings Silver',
		weight = 200,
		stack = true,
		close = false,
		description = "This was found fishing, fair and square!"
	},

	['antiquecoin'] = {
		label = 'Antique Coin',
		weight = 200,
		stack = true,
		close = false,
		description = "This seems old..."
	},
}