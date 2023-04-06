-- ==========================FireFighter Job==========================
-- ===============================By Wick===============================
-- ======================================================================
Config = {}

-- for firescript (get it here: https://github.com/Wick89/FirescriptAddons )
-- Sound Oxygen set it to true or false
Config.PlaySound = true
Config.hydrant = {200846641, 687935120, -366155374, -97646180}

-- Job name that you use  -- "ambulance" , "fire" or "lspd"
Config.JobName = 'ambulance'

-- is you use my Stations Blips set it to true or false
Config.UseBlips = false

-- Put here your fuel system cdn-fuel by default
Config.FuelSystem = 'cdn-fuel'

-- Config of vehicles players can interact with
Config.Vehicles = {
    "firetruk",
	"fireone",
    "velocityeng",
    "qrescue",
    "pengine"
}
-- Authorized Vehicles Rank
Config.AuthorizedVehicles = {
    --[[ add it example
    [8] = {   -- RANK
        ["modelName"] = "gameName", 
        ["firetruk"] = "Engine 1",
        ["example"] = "Engine 2",
    },  --]]    
	-- Recruit
	[0] = {
		["e450b"] = "AMBULAN",
	},
	-- Paramedic
	[1] = {
		["e450b"] = "E450b",
        ["3500hdambo"] = "3500H",
	},
	-- Doctor
	[2] = {
		["e450b"] = "AMBULAN",
        ["3500hdambo"] = "AMBULAN",
        ["ems2020fpiu"] = "EMS 2020",
	},
	-- Surgeon
	[3] = {
        ["ems2020fpiu"] = "EMS 2020",
        ["unraptor17bb"] = "UnRaptor",
        ["lsfdfpiu"] = "Fire chief",
	},
	-- EMS Chief
	[4] = {
        ["e450b"] = "AMBULAN",
        ["3500hdambo"] = "AMBULAN",
        ["unraptor17bb"] = "UnRaptor",
        ["ems2020fpiu"] = "EMS chief",
        ["lsfdfpiu"] = "Fire chief",

	},
    -- Firefighter
    [5] = {
        ["fireone"] = "Engine 1",
        ["velocityeng"] = "Engine 2",
        ["pengine"] = "Engine 3",
    },
    -- Sergeant
    [6] = { 
        ["fireone"] = "Engine 1",
        ["velocityeng"] = "Engine 2",
		["pengine"] = "Engine 3",
        ["axtladder"] = "Ladder 1",
        ["qrescue"] = "qrescue",
    },
    -- Lieutenant    
    [7] = {
        ["fireone"] = "Engine 1",
        ["velocityeng"] = "Engine 2",
		["pengine"] = "Engine 3",
        ["axtladder"] = "Ladder 1",
		["qrescue"] = "qrescue",
        ["firesilv17"] = "Battalion",    
    }, 
    -- Fire Chief    
    [8] = {   
        ["fireone"] = "Engine 1",
        ["velocityeng"] = "Engine 2",
		["pengine"] = "Engine 3",
        ["axtladder"] = "Ladder 1",
		["qrescue"] = "qrescue",
        ["ems2020fpiu"] = "EMS chief",
        ["lsfdfpiu"] = "Fire chief",
    },      
}
 -- Vehicle extras
Config.VehicleExtras = {
    ["car1"] = { --- Model name
        ["extras"] = {
            ["1"] = true, -- on/off
            ["2"] = true,
            ["3"] = true,
            ["4"] = true,
            ["5"] = true,
            ["6"] = true,
            ["7"] = true,
            ["8"] = true,
            ["9"] = true,
            ["10"] = true,
            ["11"] = true,
            ["12"] = true,
            ["13"] = true,
        },
		["livery"] = 1,
    },
    ["lsfdfpiu"] = { --- Model name
        ["extras"] = {
            ["1"] = false,
            ["2"] = true,
            ["3"] = true,
            ["4"] = true,
            ["5"] = false,
            ["6"] = false,
            ["7"] = true,
            ["8"] = true,
            ["9"] = true,
            ["10"] = true,
            ["11"] = true,
            ["12"] = true,
            ["13"] = true,
        },
		["livery"] = 1,
    }
}

-- turnout Progressbar -- true or false
Config.Progressbar = true

-- your EUP setup here
Config.turnout = {
    ['suitpants'] = {
        ['female'] = {
            item = 78,
             -- for see you have pants on    
             [78] = true,
            texture = 0,
        },
        ['male'] = {
            item = 158,
            -- for see you have pants on    
            [158] = true,
            texture = 0
        }
    },
     -- for see you have ScbaGear on    
    ['scba'] = {
        ['female'] = {
            item = 276,
             -- for see you have ScbaGear on    
            [276] = true,
            texture = 0
        },
        ['male'] = {
            item = 173,
             -- for see you have ScbaGear on    
            [173] = true,
            texture = 0
        }
    },
    ['suittop'] = {
        ['female'] = {
            item = 437,
              -- for see you have top on    
            [437] = true,
            texture = 0
        },
        ['male'] = {
            item = 423,
              -- for see you have top on    
              [423] = true,
            texture = 0
        }
    },
    ['suithat'] = {
        ['female'] = {
            item = 148,
            texture = 0
        },
        ['male'] = {
            item = 60,
            texture = 0
        }
    },
    ['suitshoes'] = {
        ['female'] = {
            item = 75,
            texture = 0
        },
        ['male'] = {
            item = 22,
            texture = 0
        }
    },
    ['arms'] = {
        ['female'] = {
            item = 212,
            texture = 5
        },
        ['male'] = {
            item = 170,
            texture = 0
        }
    },
}

-- stations Locations on map and Vehicles spawn example
Config.Locations = {
    ["stations"] = {
        -- example
        -- Rockford Station
        {
            coords = vector4(-633.8, -101.22, 38.05, 114.82), -- ped for NPC
            spawn = vector4(-645.96, -112.16, 37.9, 118.87), -- Vehicles spawn
            -- stations blip
            label = "Rockford Station 1",  -- label for blip
            blipid = 686, -- id for blip
        },
        -- Sandy
        {
            coords = vector4(1681.43, 3596.74, 36.48, 212.09),
            spawn = vector4(1693.86, 3590.73, 36.53, 215.63),
           -- stations blip
            label = "Fire Dept 32", 
            blipid = 717,
        },
        -- Davis Fire DEPT
        {
            coords = vector4(219.39, -1651.29, 29.82, 159.25),
            spawn = vector4(202.75, -1676.46, 29.8, 49.09),
            -- stations blip
            label = "Davis Fire Dept 18", 
            blipid = 703,
        },
        -- Pillbox
        {
            coords = vector4(338.05, -586.37, 28.8, 60.02),
            spawn = vector4(326.71, -572.47, 28.8, 330.76),
            -- stations are in Pillbox<!
            --blipid = 47,
        },
        -- Fire Dept 7
        {
            coords = vector4(1193.38, -1495.59, 34.84, 268.58),
            spawn = vector4(1197.02, -1506.51, 34.69, 87.45),
            -- stations blip
            label = "Fire Dept 7",
            blipid = 692,
        },
    },
    ["Duty"] = { 
        -- Rockford Station -- example
        vector3(-630.33, -124.83, 39.22), -- example
    },
    -- building stash
    ["stash"] = { 
        -- Rockford Station -- example
        vector3(-625.01, -111.28, 45.5), -- example
    },  
}

-- Items are items but it is also into vehicles
-- setup in stash to have it in building
Config.Items = {
    label = "Truck Tools",
    slots = 30,
    items = {
        [1] = {
            name = "weapon_fireextinguisher",
            price = 0,
            amount = 2,
            info = { },
            type = "item",
            slot = 1,
            authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9}
        },
        [2] = {
            name = "weapon_wrench",
            price = 0,
            amount = 2,
            info = { },
            type = "weapon",
            slot = 2,
            authorizedJobGrades = {5, 6, 7, 8}
        },
        [3] = {
            name = "firstaid",
            price = 0,
            amount = 6,
            info = { },
            type = "item",
            slot = 3,
            authorizedJobGrades = {1, 2, 3, 4, 5, 6, 7, 8, 9}
        },
        -- for FireTools (buy here: https://store.londonstudios.net/category/resources )
        [4] = {
            name = "stabilisers",
            price = 0,
            amount = 5,
            info = { },
            type = "item",
            slot = 4,
            authorizedJobGrades = {5, 6, 7, 8}
        },
        -- for FireTools (buy here: https://store.londonstudios.net/category/resources )
        [5] = {
            name = "fan",
            price = 0,
            amount = 2,
            info = { },
            type = "item",
            slot = 5,
            authorizedJobGrades = {5, 6, 7, 8}
        },
    }
}