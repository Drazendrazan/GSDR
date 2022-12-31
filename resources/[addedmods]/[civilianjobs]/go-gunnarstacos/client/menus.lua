local QBCore = exports['qb-core']:GetCoreObject()

Citizen.CreateThread(function()
	exports['qb-target']:AddBoxZone("GunnarsTacos-Duty", vector3(418.15, -1915.08, 25.47), 0.8, 0.5, { -- no idea where this is
		name = "GunnarsTacos-Duty",
		heading = 225,
		debugPoly = true,
		minZ=24.0,
		maxZ=27.0,
	}, {
		options = {
		    {  
			event = "go-gunnarstacos:Duty",
			icon = "far fa-clipboard",
			label = "Clock On/Off",
			job = "gt",
		    },
		},
		distance = 1.5
	})

	exports['qb-target']:AddBoxZone("GunnarsTacos-Tray1", vector3(418.15, -1915.08, 25.47), 1, 1, { -- no idea where this is 
		name = "GunnarsTacos-Tray1",
		heading = 315,
		debugPoly = false,
		minZ=24.0,
		maxZ=27.0,
	}, {
		options = {
		    {
			event = "go-gunnarstacos:Tray1",
			icon = "far fa-clipboard",
			label = "Tray 1",
		    },
		},
		distance = 1.5
	})
    
    exports['qb-target']:AddBoxZone("GunnarsTacos-Tray2", vector3(416.28, -1916.98, 25.47), 1, 1, { -- no idea where this is
		name="GunnarsTacos-Tray2",
		heading=315,
		debugPoly=false,
		minZ=24.0,
		maxZ=27.0,
	}, {
		options = {
		    {
			event = "go-gunnarstacos:Tray2",
			icon = "far fa-clipboard",
			label = "Tray 2",
		    },
		},
		distance = 1.5
	})

    exports['qb-target']:AddBoxZone("GunnarsTacos-Fridge", vector3(17.56, -1599.01, 28.37), 1.2, 1, {
        name="GunnarsTacos-Fridge",
        heading=315,
        dubugPoly=false,
		minZ=24.0,
		maxZ=30.5,
    }, {
        options = {
           {
            event = "nh-context:GunnarsTacos-FridgeMenu",
            icon = "fa-solid fa-refrigerator",
            label = "Open Fridge",
            job = "gt",
            },
        },
        distance = 1.5
    })

    exports['qb-target']:AddBoxZone("GunnarsTacos-OrderIngredients", vector3(8.2, -1607.36, 29.53), 0.5, 0.5, {
        name="GunnarsTacos-OrderIngredients",
        heading=315,
        dubugPoly=false,
		minZ=29.0,
		maxZ=30.0,
    }, {
        options = {
            {
            event = "nh-context:GunnarsTacos-OrderIngredientsMenu",
            icon = "fas fa-laptop",
            label = "Get Ingredients",
            job = "gt",
            },
        },
        distance = 1.5
    })

    exports['qb-target']:AddBoxZone("GunnarsTacos-Display1", vector3(10.57, -1599.03, 27.78), 1.4, 0.9, {
        name="GunnarsTacos-Display1",
        heading=315,
        dubugPoly=false,
		minZ=24.0,
		maxZ=29.0,
    }, {
        options = {
            {
            event = "go-gunnarstacos:Display",
            icon = "fas fa-box",
            label = "Storage",
            job = "gt",
            },
        },
        distance = 1.5
    })

    exports['qb-target']:AddBoxZone("GunnarsTacos-Display2", vector3(16.0, -1597.71, 28.3), 1.6, 0.7, {
        name="GunnarsTacos-Display2",
        heading=225,
        dubugPoly=false,
		minZ=24.0,
		maxZ=29.0,
    }, {
        options = {
            {
            event = "go-gunnarstacos:Display",
            icon = "fas fa-box",
            label = "Storage",
            job = "gt",
            },
        },
        distance = 1.5
    })

    exports['qb-target']:AddBoxZone("GunnarsTacos-MakeFood", vector3(12.73, -1596.69, 28.43), 2, 0.8, {
        name="GunnarsTacos-MakeFood",
        heading=315,
        dubugPoly=false,
		minZ=24.0,
		maxZ=29.8,
    }, {
        options = {
            {
            event = "nh-context:GunnarsTacos-FoodMenu",
            icon = "fa-solid fa-taco",
            label = "Food Work Station",
            job = "gt",
            },
        },
        distance = 1.5
    })


    exports['qb-target']:AddBoxZone("GunnarsTacos-MakeMeals", vector3(10.47, -1604.9, 28.83), 1.7, 1, {
        name="GunnarsTacos-MakeMeals",
        heading=315,
        dubugPoly=false,
		minZ=24.0,
		maxZ=30.0,
    }, {
        options = {
            {
            event = "nh-context:GunnarsTacos-MealMenu",
            icon = "fa-solid fa-hand-holding-box",
            label = "Meal Work Station",
            job = "gt",
            },
        },
        distance = 1.5
    })

    exports['qb-target']:AddBoxZone("GunnarsTacos-CookMeats", vector3(11.06, -1598.92, 29.43), 1.6, 1, {
        name="GunnarsTacos-CookMeats",
        heading=315,
        dubugPoly=false,
		minZ=24.0,
		maxZ=30.0,
    }, {
        options = {
            {
            event = "nh-context:GunnarsTacos-CookMeatMenu",
            icon = "fa-solid fa-meat",
            label = "Cook Meats Work Station",
            job = "gt",
            },
        },
        distance = 1.5
    })

    exports['qb-target']:AddBoxZone("GunnarsTacos-Register1", vector3(9.82, -1605.65, 29.59), 0.8, 0.8, {
        name="GunnarsTacos-Register1",
        heading=315,
        dubugPoly=false,
		minZ=24.0,
		maxZ=30.0,
    }, {
        options = {
            {
            event = "go-gunnarstacos:bill",
            parms = "1",
            icon = "fas fa-credit-card",
            label = "Charge Customer",
            job = "gt",
            },
        },
        distance = 1.5
    })

    exports['qb-target']:AddBoxZone("GunnarsTacos-Register2", vector3(416.94, -1916.34, 25.47), 0.8, 0.8, { -- did not find
        name="GunnarsTacos-Register2",
        heading=315,
        debugPoly=false,
		minZ=24.0,
		maxZ=27.0,
    }, {
        options = {
            {
            event = "go-gunnarstacos:bill",
            parms = "1",
            icon = "fas fa-credit-card",
            label = "Charge Customer",
            job = "gt",
            },
        },
        distance = 1.5
    })

    exports['qb-target']:AddBoxZone("GunnarsTacos-SodaDispenser1", vector3(13.54, -1595.84, 28.62), 0.8, 0.8, {
        name="GunnarsTacos-SodaDispenser1",
        heading=315,
        dubugPoly=false,
		minZ=24.0,
		maxZ=30.0,
    }, {
        options = {
            {
            event = "nh-context:GunnarsTacos-SodaDispenserMenu",
            icon = "fas fa-filter",
            label = "Make Some Soda and Coffee",
            job = "gt",
            },
        },
        distance = 1.5
    })

    exports['qb-target']:AddBoxZone("GunnarsTacos-SodaDispenser2", vector3(422.97, -1912.58, 25.47), 1.3, 0.8, { -- did not find
        name="GunnarsTacos-SodaDispenser2",
        heading=225,
        debugPoly=false,
		minZ=24.0,
		maxZ=27.0,
    }, {
        options = {
            {
            event = "nh-context:GunnarsTacos-SodaDispenserMenu",
            icon = "fas fa-filter",
            label = "Make Some Soda and Coffee",
            job = "gt",
            },
        },
        distance = 1.5
    })

end)

-- QB-Menu --

RegisterNetEvent('nh-context:GunnarsTacos-FoodMenu', function(data)
    exports['qb-menu']:openMenu({
        {
            header = "Available Foods",
            isMenuHeader = true, -- Set to true to make a nonclickable title
        },
        {
            header = "Make a Beef Taco",
            txt = "Tortilla , Cooked Beef , Seasoning , Lettuce, Cheese",
            params = {
                event = "go-gunnarstacos:BeefTaco"
            }
        },
        {
            header = "Make a Chicken Taco",
            txt = "Tortilla , Cooked Chicken , Seasoning , Lettuce, Cheese",
            params = {
                event = "go-gunnarstacos:ChickenTaco"
            }
        },
        {
            header = "Make a Burrito",
            txt = "Tortilla , Cooked Beef , Seasoning , Refried Beans , Cheese",
            params = {
                event = "go-gunnarstacos:Burrito"
            }
        },
        {
            header = "Make an Enchilada",
            txt = "Tortilla , Cooked Beef , Seasoning , Enchilada Sauce , Cheese",
            params = {
                event = "go-gunnarstacos:Enchilada"
            }
        },
        {
            header = "Make a Quesadilla",
            txt = "Tortilla , Cooked Chicken , Seasoning , Cheese",
            params = {
                event = "go-gunnarstacos:Quesadilla"
            }
        },
        {
            header = "Make Nachos",
            txt = "Tortilla Chips , Cooked Beef , Seasoning , Salsa , Nacho Cheese",
            params = {
                event = "go-gunnarstacos:Nachos"
            }
        },
        {
            header = "Close (ESC)",
            isMenuHeader = true, -- Set to true to make a nonclickable title
        }
    })
end)

RegisterNetEvent('nh-context:GunnarsTacos-MealMenu', function(data)
    exports['qb-menu']:openMenu({
        {
            header = "Available Foods",
            isMenuHeader = true, -- Set to true to make a nonclickable title
        },
        {
            header = "Make a Beef Taco Meal",
            txt = "Burrito, Beef Taco x2, Soda",
            params = {
                event = "go-gunnarstacos:BeefComboMeal"
            }
        },
        {
            header = "Make a Chicken Taco Meal",
            txt = "Burrito, Chicken Taco x2, Soda",
            params = {
                event = "go-gunnarstacos:ChickenComboMeal"
            }
        },
        {
            header = "Close (ESC)",
            isMenuHeader = true, -- Set to true to make a nonclickable title
        }
    })
end)

RegisterNetEvent('nh-context:GunnarsTacos-CookMeatMenu', function(data)
    exports['qb-menu']:openMenu({
        {
            header = "Available Foods",
            isMenuHeader = true, -- Set to true to make a nonclickable title
        },
        {
            header = "Cook Ground Beef",
            txt = "Ground Beef",
            params = {
                event = "go-gunnarstacos:CookedBeef"
            }
        },
        {
            header = "Cook Raw Chicken",
            txt = "Raw Chicken",
            params = {
                event = "go-gunnarstacos:CookedChicken"
            }
        },
        {
            header = "Close (ESC)",
            isMenuHeader = true, -- Set to true to make a nonclickable title
        }
    })
end)

RegisterNetEvent('nh-context:GunnarsTacos-FridgeMenu', function(data)
    exports['qb-menu']:openMenu({
        {
            header = "Fridge",
            isMenuHeader = true
        },
        {
            header = "Open Fridge",
            txt = "See what you have in storage",
            params = {
                event = "go-gunnarstacos:Storage2"
            }
        },
        {
            header = "Close (ESC)",
            isMenuHeader = true, -- Set to true to make a nonclickable title
        }
    })
end)

RegisterNetEvent('nh-context:GunnarsTacos-OrderIngredientsMenu', function(data)
    exports['qb-menu']:openMenu({
        {
            header = "Ingredients",
            isMenuHeader = true
        },
        {
            header = "Get Ingredients",
            txt = "Get New Ingredients",
            params = {
                event = "go-gunnarstacos:shop"
            }
        },
        {
            header = "Close (ESC)",
            isMenuHeader = true, -- Set to true to make a nonclickable title
        }
    })
end)

RegisterNetEvent('nh-context:GunnarsTacos-SodaDispenserMenu', function(data)
    exports['qb-menu']:openMenu({
        {
            id = 0,
            header = "Soda Dispenser",
            isMenuHeader = true, -- Set to true to make a nonclickable title
        },
        {
            
            header = "Pour a Cup of Soda",
            txt = "Soda Syrup",
            params = {
                event = "go-gunnarstacos:Soda"
            }
        },
        {
            
            header = "Pour a Cup of Coffee",
            txt = "Coffee Beans",
            params = {
                event = "go-gunnarstacos:Coffee"
            }
        },
        {
           
            header = "Close (ESC)",
            isMenuHeader = true, -- Set to true to make a nonclickable title
        },
    })
end)

-- Bill Stuff
RegisterNetEvent("go-gunnarstacos:bill")
AddEventHandler("go-gunnarstacos:bill", function()
    local bill = exports['qb-input']:ShowInput({
        header = "Create Receipt",
		submitText = "Bill",
        inputs = {
            {
                text = "Server ID(#)",
				name = "citizenid", -- name of the input should be unique otherwise it might override
                type = "text", -- type of the input
                isRequired = true -- Optional [accepted values: true | false] but will submit the form if no value is inputted
            },
            {
                text = "Bill Price ($)", -- text you want to be displayed as a place holder
                name = "billprice", -- name of the input should be unique otherwise it might override
                type = "number", -- type of the input - number will not allow non-number characters in the field so only accepts 0-9
                isRequired = false -- Optional [accepted values: true | false] but will submit the form if no value is inputted
            }
			
        }
    })
    if bill ~= nil then
        if bill.citizenid == nil or bill.billprice == nil then 
            return 
        end
        TriggerServerEvent("go-gunnarstacos:bill:player", bill.citizenid, bill.billprice)
    end
end)

