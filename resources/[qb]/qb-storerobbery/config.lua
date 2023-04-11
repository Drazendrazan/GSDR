Config = {}

Config.minEarn = 400
Config.maxEarn = 750
Config.RegisterEarnings = math.random(Config.minEarn, Config.maxEarn)
Config.MinimumStoreRobberyPolice = 2
Config.resetTime = (60 * 1000) * 30
Config.tickInterval = 1000

Config.Registers = {
    [1] = {vector3(-47.24,-1757.65, 29.53), robbed = false, time = 0, safeKey = 1, camId = 4},
    [2] = {vector3(-48.58,-1759.21, 29.59), robbed = false, time = 0, safeKey = 1, camId = 4},
    [3] = {vector3(-1486.26,-378.0,  40.16), robbed = false, time = 0, safeKey = 2, camId = 5},
    [4] = {vector3(-1222.03,-908.32, 12.32), robbed = false, time = 0, safeKey = 3, camId = 6},
    [5] = {vector3(-706.08, -915.42, 19.21), robbed = false, time = 0, safeKey = 4, camId = 7},
    [6] = {vector3(-706.16, -913.5, 19.21), robbed = false, time = 0, safeKey = 4, camId = 7},
    [7] = {vector3( 24.47, -1344.99, 29.49), robbed = false, time = 0, safeKey = 5, camId = 8},
    [8] = {vector3(24.45, -1347.37, 29.49), robbed = false, time = 0, safeKey = 5, camId = 8},
    [9] = {vector3(1134.15, -982.53, 46.41), robbed = false, time = 0, safeKey = 6, camId = 9},
    [10] = {vector3(1165.05, -324.49, 69.2), robbed = false, time = 0, safeKey = 7, camId = 10},
    [11] = {vector3(1164.7, -322.58, 69.2), robbed = false, time = 0, safeKey = 7, camId = 10},
    [12] = {vector3(373.14, 328.62, 103.56), robbed = false, time = 0, safeKey = 8, camId = 11},
    [13] = {vector3(372.57, 326.42, 103.56), robbed = false, time = 0, safeKey = 8, camId = 11},
    [14] = {vector3(-1818.9, 792.9, 138.08), robbed = false, time = 0, safeKey = 9, camId = 12},
    [15] = {vector3(-1820.17, 794.28, 138.08), robbed = false, time = 0, safeKey = 9, camId = 12},

Config.Safes = {
    [1] = {vector4(-43.43, -1748.3, 29.42,  52.5), type = "keypad", robbed = false, camId = 4},
    [2] = {vector4(-1478.94, -375.5, 39.16,  229.5), type = "padlock", robbed = false, camId = 5},
    [3] = {vector4(-1220.85, -916.05, 11.32,  229.5), type = "padlock", robbed = false, camId = 6},
    [4] = {vector4(-709.74, -904.15, 19.21, 229.5), type = "keypad", robbed = false, camId = 7},
    [5] = {vector3(28.21, -1339.14, 29.49), type = "keypad", robbed = false, camId = 8},
    [6] = {vector3(1126.77, -980.1, 45.41), type = "padlock", robbed = false, camId = 9},

Config.MaleNoHandshoes = {
    [0] = true, [1] = true, [2] = true, [3] = true, [4] = true, [5] = true, [6] = true, [7] = true, [8] = true, [9] = true, [10] = true, [11] = true, [12] = true, [13] = true, [14] = true, [15] = true, [18] = true, [26] = true, [52] = true, [53] = true, [54] = true, [55] = true, [56] = true, [57] = true, [58] = true, [59] = true, [60] = true, [61] = true, [62] = true, [112] = true, [113] = true, [114] = true, [118] = true, [125] = true, [132] = true,
}
Config.FemaleNoHandshoes = {
    [0] = true, [1] = true, [2] = true, [3] = true, [4] = true, [5] = true, [6] = true, [7] = true, [8] = true, [9] = true, [10] = true, [11] = true, [12] = true, [13] = true, [14] = true, [15] = true, [19] = true, [59] = true, [60] = true, [61] = true, [62] = true, [63] = true, [64] = true, [65] = true, [66] = true, [67] = true, [68] = true, [69] = true, [70] = true, [71] = true, [129] = true, [130] = true, [131] = true, [135] = true, [142] = true, [149] = true, [153] = true, [157] = true, [161] = true, [165] = true,
}
