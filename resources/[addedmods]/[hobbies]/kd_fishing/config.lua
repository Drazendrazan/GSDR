Config = {}

Config.Cron = {
    weekday = '0,1,2,3,4,5,6',
    hour = '6',
    minute = '11'
}

Config.Time = 1800 -- The game match time /sec

Config.Price = 15 -- Paycheck each fish

Config.Zone  = {
    vector3(-975.45, 2841.03, 16),
    vector3(-980.92, 2801.67, 16),
    vector3(-1127.85, 2771.44, 16),
    vector3(-1158.27, 2802.41, 16),
    vector3(-1044.7188, 2860.4004, 16),
    vector3(-989.5717, 2864.9526, 16),
}

Config.Amount = 30

Config.Boss = {
    model = `cs_old_man1a`,
    coords = vector4(-1505.1667, 1511.7402, 115.2886, 261.0053),
    sprite = 356,
    color = 3,
    scale = 0.7,
    name = "Fisherman"
}

Config.Fishing = {
    [1] = {
        name = 'fishing-carp',
        chance = 99,
        skill = 1,
        point = 1,
    },
    [2]  = {
        name = 'fishing-cat',
        chance = 99,
        skill = 1,
        point = 1,
    },
    [3] = {
        name = 'fishing-yellowperch',
        chance = 99,
        skill = 1,
        point = 1,
    },
    [4] = {
        name = 'fishing-alligator-snapping-turtle',
        chance = 75,
        skill = 2,
        point = 2,
    },
    [5] = {
        name = 'fishing-sockeye-salmon',
        chance = 75,
        skill = 2,
        point = 2,
    },
    [6] 	= {
        name = 'fishing-sturgeon',
        chance = 75,
        skill = 2,
        point = 2,
    },
    [7] = {
        name = 'fishing-bluefish',
        chance = 99,
        skill = 1,
        point = 1,
    },
    [8] = {
        name = 'fishing-flounder',
        chance = 99,
        skill = 1,
        point = 1,
    },
    [9] = {
        name = 'fishing-mackerel',
        chance = 50,
        skill = 3,
        point = 3,
    },
    [10] = {
        name = 'fishing-cod',
        chance = 50,
        skill = 3,
        point = 3,
    },
    [11] = {
        name = 'fishing-dolphin',
        chance = 20,
        skill = 4,
        point = 5,
    },
    [12] = {
        name ='fishing-whale',
        chance = 5,
        skill = 4,
        point = 7,
    },
    [13] 	= {
        name = 'fishing-shark',
        chance = 10,
        skill = 4,
        point = 6,
    },
}

Config.Trash = {
    [1] = {
        name = 'fishing_boot',
        chance = 99,
        skill = 1,
    },
    [2]  = {
        name = 'fishing_log',
        chance = 99,
        skill = 1,
    },
    [3] = {
        name = 'fishing_tin',
        chance = 99,
        skill = 1,
    },
    [4] = {
        name = 'fishing_chest',
        chance = 3,
        skill = 4,
    },
}