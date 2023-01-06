Config = {}
Config.MaxWidth = 5.0
Config.MaxHeight = 5.0
Config.MaxLength = 5.0
Config.DamageNeeded = 100.0
Config.IdleCamera = true
Config.EnableProne = true
Config.JointEffectTime = 60
Config.RemoveWeaponDrops = false
Config.RemoveWeaponDropsTimer = 25
Config.DefaultPrice = 20 -- Default price for the carwash
Config.DirtLevel = 0.1 -- Threshold for the dirt level to be counted as dirty
Config.DisableAmbience = false -- Disabled distance sirens, distance car alarms, etc

Config.Disable = {
    disableHudComponents = {1, 2, 3, 4, 7, 9, 13, 14, 19, 20, 21, 22}, -- Hud Components: https://docs.fivem.net/natives/?_0x6806C51AD12B83B8
    disableControls = {37}, -- Controls: https://docs.fivem.net/docs/game-references/controls/
    displayAmmo = true -- false disables ammo display
}

Config.Density = {
    ['parked'] = 0.8,
    ['vehicle'] = 0.8,
    ['multiplier'] = 0.8,
    ['peds'] = 0.8,
    ['scenario'] = 0.8,
}

ConsumablesEat = {
    ["sandwich"] = math.random(35, 54),
    ["tosti"] = math.random(40, 50),
    ["twerks_candy"] = math.random(35, 54),
    ["snikkel_candy"] = math.random(40, 50),
    ["irishpub_banana_nut"] = math.random(20, 40),
	["irishpub_chocolatecup"] = math.random(20, 40),
	["irishpub_strawberrycup"] = math.random(20, 40),
	["tq_banana_nut"] = math.random(20, 40),
	["tq_chocolatecup"] = math.random(20, 40),
	["tq_strawberrycup"] = math.random(20, 40),
    ["gt-beef_taco"] = math.random(40, 60),
    ["gt-chicken_taco"] = math.random(40, 60),
    ["gt-burrito"] = math.random(50, 80),
    ["gt-enchilada"] = math.random(40, 60),
    ["gt-quesadilla"] = math.random(40, 60),
    ["gt-nachos"] = math.random(50, 80),
    ["b-hotdog"] = math.random(35, 54),
    ["b-burger"] = math.random(35, 54),
    ["b-brisket"] = math.random(35, 54),
    ["b-chicken"] = math.random(35, 54),
    ["b-ribs"] = math.random(35, 54),
    ["b-jacket"] = math.random(35, 54),
    ["crisps"] = math.random(10, 20),
	["hamburger"] = math.random(10, 20),
	["heartysandwich"] = math.random(10, 20),
	["hotdog"] = math.random(10, 20),
	["pizzaslice"] = math.random(10, 20),
	["rabbitfood"] = math.random(10, 20),


}

ConsumablesDrink = {
    ["water_bottle"] = math.random(35, 54),
    ["kurkakola"] = math.random(35, 54),
    ["coffee"] = math.random(40, 50),
    ["irishpub_berry_hydrating"] = math.random(20, 40),
    ["irishpub_green_dream"] = math.random(20, 40),
    ["irishpub_island_breeze"] = math.random(20, 40),
    ["irishpub_just_peachy"] = math.random(20, 40),
    ["irishpub_watermelon_dream"] = math.random(20, 40),
    ["irishpub_ban_straw_juice"] = math.random(20, 40),
    ["irishpub_banana_juice"] = math.random(20, 40),
    ["irishpub_kiwi_juice"] = math.random(20, 40),
    ["irishpub_strawberry_juice"] = math.random(20, 40),
    ["irishpub_orange_juice"] = math.random(20, 40),
    ["tq_berry_hydrating"] = math.random(20, 40),
    ["tq_green_dream"] = math.random(20, 40),
    ["tq_island_breeze"] = math.random(20, 40),
    ["tq_just_peachy"] = math.random(20, 40),
    ["tq_watermelon_dream"] = math.random(20, 40),
    ["tq_ban_straw_juice"] = math.random(20, 40),
    ["tq_banana_juice"] = math.random(20, 40),
    ["tq_kiwi_juice"] = math.random(20, 40),
    ["tq_strawberry_juice"] = math.random(20, 40),
    ["tq_orange_juice"] = math.random(20, 40),
    ["gt-soda"] = math.random(40, 50),
    ["gt-coffee"] = math.random(40, 50),
    ["dvrcocktail"] = math.random(5, 15),
	["milkdragon"] = math.random(5, 15),
	["jbcocktail"] = math.random(5, 15),
	["scarcolada"] = math.random(5, 15),
	["opmcocktail"] = math.random(5, 15),
	["dbcocktail"] = math.random(5, 15),
	["hulkcocktail"] = math.random(5, 15),
	["vitodaiquiri"] = math.random(5, 15),
	["marvelcocktail"] = math.random(5, 15),
	["yoshishooter"] = math.random(5, 15),
	["patochebeer"] = math.random(5, 15),
	["duffbeer"] = math.random(5, 15),

}

ConsumablesAlcohol = {
    ["whiskey"] = math.random(20, 30),
    ["beer"] = math.random(30, 40),
    ["vodka"] = math.random(20, 40),
    ["irishpub_cocktail"] = math.random(20, 30),
    ["irishpub_coconut_drink"] = math.random(30, 40),
    ["irishpub_island_fantasy"] = math.random(20, 40),
    ["irishpub_kamikaze"] = math.random(20, 40),
    ["irishpub_redhot_daquiri"] = math.random(20, 40),
    ["tq_cocktail"] = math.random(20, 30),
    ["tq_coconut_drink"] = math.random(30, 40),
    ["tq_island_fantasy"] = math.random(20, 40),
    ["tq_kamikaze"] = math.random(20, 40),
    ["tq_redhot_daquiri"] = math.random(20, 40),
}

ConsumeablesEatSuperDonut = {
    ["superdonut"] = math.random(5, 30),
}

ConsumeablesSlushy = {
    ["redslushy"] = math.random(15, 25),
    ["orangeslushy"] = math.random(15, 25),
    ["blueslushy"] = math.random(15, 25),
    ["yellowslushy"] = math.random(15, 25),
    ["greenslushy"] = math.random(15, 25),
    ["rainbowslushy"] = math.random(15, 25),
}

ConsumeablesEatIceCream = {
    ["vanillaicecream"] = math.random(12, 20),
    ["chocolateicecream"] = math.random(12, 20),
    ["minticecream"] = math.random(15, 24),
    ["cookiesandcreamicecream"] = math.random(18, 26),
}

ConsumeablesEatGumBall = {
    ["bubblegum_gumball"] = math.random(6, 8),
    ["blueberry_gumball"] = math.random(6, 8),
    ["banana_gumball"] = math.random(6, 8),
    ["mint_gumball"] = math.random(6, 8),
    ["cherry_gumball"] = math.random(6, 8),
}

ConsumablesFireworks = {
    "firework1",
    "firework2",
    "firework3",
    "firework4"
}

Config.BlacklistedScenarios = {
    ['TYPES'] = {
        "WORLD_VEHICLE_MILITARY_PLANES_SMALL",
        "WORLD_VEHICLE_MILITARY_PLANES_BIG",
        "WORLD_VEHICLE_AMBULANCE",
        "WORLD_VEHICLE_POLICE_NEXT_TO_CAR",
        "WORLD_VEHICLE_POLICE_CAR",
        "WORLD_VEHICLE_POLICE_BIKE",
    },
    ['GROUPS'] = {
        2017590552,
        2141866469,
        1409640232,
        `ng_planes`,
    }
}

Config.BlacklistedVehs = {
    [`SHAMAL`] = true,
    [`LUXOR`] = true,
    [`LUXOR2`] = true,
    [`JET`] = true,
    [`LAZER`] = true,
    [`BUZZARD`] = true,
    [`BUZZARD2`] = true,
    [`ANNIHILATOR`] = true,
    [`SAVAGE`] = true,
    [`TITAN`] = true,
    [`RHINO`] = true,
    [`FIRETRUK`] = true,
    [`MULE`] = true,
    [`MAVERICK`] = true,
    [`BLIMP`] = true,
    [`AIRTUG`] = true,
    [`CAMPER`] = true,
    [`HYDRA`] = true,
    [`OPPRESSOR`] = true,
    [`technical3`] = true,
    [`insurgent3`] = true,
    [`apc`] = true,
    [`tampa3`] = true,
    [`trailersmall2`] = true,
    [`halftrack`] = true,
    [`hunter`] = true,
    [`vigilante`] = true,
    [`akula`] = true,
    [`barrage`] = true,
    [`khanjali`] = true,
    [`caracara`] = true,
    [`blimp3`] = true,
    [`menacer`] = true,
    [`oppressor2`] = true,
    [`scramjet`] = true,
    [`strikeforce`] = true,
    [`cerberus`] = true,
    [`cerberus2`] = true,
    [`cerberus3`] = true,
    [`scarab`] = true,
    [`scarab2`] = true,
    [`scarab3`] = true,
    [`rrocket`] = true,
    [`ruiner2`] = true,
    [`deluxo`] = true,
}

Config.BlacklistedPeds = {
    [`s_m_y_ranger_01`] = true,
    [`s_m_y_sheriff_01`] = true,
    [`s_m_y_cop_01`] = true,
    [`s_f_y_sheriff_01`] = true,
    [`s_f_y_cop_01`] = true,
    [`s_m_y_hwaycop_01`] = true,
}

Config.Teleports = {
    --Elevator @ labs
    [1] = {
        [1] = {
            coords = vector4(3540.74, 3675.59, 20.99, 167.5),
            ["AllowVehicle"] = false,
            drawText = '[E] Take Elevator Up'
        },
        [2] = {
            coords = vector4(3540.74, 3675.59, 28.11, 172.5),
            ["AllowVehicle"] = false,
            drawText = '[E] Take Elevator Down'
        },

    },
    --Coke Processing Enter/Exit
    [2] = {
        [1] = {
            coords = vector4(909.49, -1589.22, 30.51, 92.24),
            ["AllowVehicle"] = false,
            drawText = '[E] Enter Coke Processing'
        },
        [2] = {
            coords = vector4(1088.81, -3187.57, -38.99, 181.7),
            ["AllowVehicle"] = false,
            drawText = '[E] Leave'
        },
    },
}

Config.CarWash = { -- carwash
    [1] = {
        ["label"] = "Hands Free Carwash",
        ["coords"] = vector3(25.29, -1391.96, 29.33),
    },
    [2] = {
        ["label"] = "Hands Free Carwash",
        ["coords"] = vector3(174.18, -1736.66, 29.35),
    },
    [3] = {
        ["label"] = "Hands Free Carwash",
        ["coords"] = vector3(-74.56, 6427.87, 31.44),
    },
    [4] = {
        ["label"] = "Hands Free Carwash",
        ["coords"] = vector3(1363.22, 3592.7, 34.92),
    },
    [5] = {
        ["label"] = "Hands Free Carwash",
        ["coords"] = vector3(-699.62, -932.7, 19.01),
    }
}
