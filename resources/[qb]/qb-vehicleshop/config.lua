Config = {}
Config.UsingTarget = GetConvar('UseTarget', 'false') == 'true'
Config.Commission = 0.10 -- Percent that goes to sales person from a full car sale 10%
Config.FinanceCommission = 0.05 -- Percent that goes to sales person from a finance sale 5%
Config.FinanceZone = vector3(-29.53, -1103.67, 26.42)-- Where the finance menu is located
Config.PaymentWarning = 10 -- time in minutes that player has to make payment before repo
Config.PaymentInterval = 24 -- time in hours between payment being due
Config.MinimumDown = 10 -- minimum percentage allowed down
Config.MaximumPayments = 24 -- maximum payments allowed
Config.PreventFinanceSelling = false -- allow/prevent players from using /transfervehicle if financed
Config.Shops = {
    ['pdm'] = {
        ['Type'] = 'free-use', -- no player interaction is required to purchase a car
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the shop
                vector2(-59.171298980713, -1098.0219726562),
                vector2(-52.382118225098, -1079.4240722656),
                vector2(-45.066371917725, -1081.2681884766),
                vector2(-27.219314575195, -1088.2438964844),
                vector2(-33.021835327148, -1108.6146240234)
            },
            ['minZ'] = 26.0,  -- min height of the shop zone
            ['maxZ'] = 28.0  -- max height of the shop zone
        },
        ['Job'] = 'none', -- Name of job or none
        ['ShopLabel'] = 'Premium Deluxe Motorsport', -- Blip name
        ['showBlip'] = true, -- true or false
        ['blipSprite'] = 326, -- Blip sprite
        ['blipColor'] = 3, -- Blip color
        ['TestDriveTimeLimit'] = 0.5, -- Time in minutes until the vehicle gets deleted
        ['Location'] = vector3(-45.67, -1098.34, 26.42), -- Blip Location
        ['ReturnLocation'] = vector3(-44.74, -1082.58, 26.68), -- Location to return vehicle, only enables if the vehicleshop has a job owned
        ['VehicleSpawn'] = vector4(-56.79, -1109.85, 26.43, 71.5), -- Spawn location when vehicle is bought
        ['TestDriveSpawn'] = vector4(-56.79, -1109.85, 26.43, 71.5), -- Spawn location for test drive
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(-42.14, -1101.5, 26.66, 19.46),
                defaultVehicle = 'zr350',
                chosenVehicle = 'zr350',
            },
            [2] = {
                coords = vector4(-54.58, -1097.09, 26.66, 31.02),
                defaultVehicle = 'calico',
                chosenVehicle = 'calico',
            },
            [3] = {
                coords = vector4(-50.01, -1083.48, 26.66, 251.83),
                defaultVehicle = 'jester4',
                chosenVehicle = 'jester4',
            },
            [4] = {
                coords = vector4(-37.05, -1093.44, 26.66, 18.96),
                defaultVehicle = 'rt3000',
                chosenVehicle = 'rt3000',
            },
            [5] = {
                coords = vector4(-47.3, -1091.95, 26.66, 94.8),
                defaultVehicle = 'comet6',
                chosenVehicle = 'comet6',
            }
        },
    },
    ['luxury'] = {
        ['Type'] = 'managed', -- meaning a real player has to sell the car
        ['Zone'] = {
            ['Shape'] = {
                vector2(-782.91442871094, -245.68379211426),
                vector2(-795.04058837891, -224.68206787109),
                vector2(-795.37048339844, -224.18646240234),
                vector2(-799.75958251953, -227.14688110352),
                vector2(-800.60931396484, -228.0883026123),
                vector2(-788.89758300781, -248.73957824707),
                vector2(-779.62921142578, -237.49554443359),
                vector2(-782.50372314453, -239.01202392578),
                vector2(-786.4150390625, -232.33746337891),
                vector2(-783.36749267578, -230.66380310059),
                vector2(-803.52484130859, -209.39762878418),
                vector2(-799.07025146484, -217.32177734375),
                vector2(-805.63055419922, -219.7145690918),
                vector2(-809.490234375, -212.6559753418),
                vector2(-792.26397705078, -206.32939147949),
                vector2(-786.1826171875, -202.75469970703),
                vector2(-783.00170898438, -208.00750732422),
                vector2(-789.09100341797, -211.29490661621),
                vector2(-780.02508544922, -222.7268371582),
                vector2(-776.01422119141, -220.38450622559),
                vector2(-779.12426757812, -215.19241333008),
                vector2(-783.46429443359, -217.40455627441),
                vector2(-767.33166503906, -231.75482177734),
                vector2(-771.09155273438, -233.91128540039),
                vector2(-768.42126464844, -238.61444091797),
                vector2(-764.78070068359, -236.70874023438),
                vector2(-792.97503662109, -223.04026794434),
                vector2(-796.94879150391, -216.30444335938),
                vector2(-790.12817382812, -212.33442687988),
                vector2(-786.25091552734, -219.16952514648)
                
            },
            ['minZ'] = 37.147605895996,
            ['maxZ'] = 37.24222946167
        },
        ['Job'] = 'cardealer', -- Name of job or none
        ['ShopLabel'] = 'Luxury Vehicle Shop',
        ['showBlip'] = true, -- true or false
        ['blipSprite'] = 326, -- Blip sprite
        ['blipColor'] = 3, -- Blip color
        ['TestDriveTimeLimit'] = 0.5,
        ['Location'] = vector3(-1255.6, -361.16, 36.91),
        ['ReturnLocation'] = vector3(-1231.46, -349.86, 37.33),
        ['VehicleSpawn'] = vector4(-1231.46, -349.86, 37.33, 26.61),
        ['TestDriveSpawn'] = vector4(-1232.81, -347.99, 37.33, 23.28), -- Spawn location for test drive
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(-787.23, -243.9, 36.15, 323.61),
                defaultVehicle = 'italirsx',
                chosenVehicle = 'italirsx',
            },
            [2] = {
                coords = vector4(-789.5, -240.71, 36.15, 323.61),
                defaultVehicle = 'italirsx',
                chosenVehicle = 'italirsx',
            },
            [3] = {
                coords = vector4(-791.61, -237.34, 36.15, 323.61),
                defaultVehicle = 'italirsx',
                chosenVehicle = 'italirsx',
            },
            [4] = {
                coords = vector4(-793.46, -234.03, 36.15, 323.61),
                defaultVehicle = 'italirsx',
                chosenVehicle = 'italirsx',
            },
            [5] = {
                coords = vector4(-794.97, -230.98, 36.15, 323.61),
                defaultVehicle = 'italirsx',
                chosenVehicle = 'italirsx',
            },
            [6] = {
                coords = vector4(-796.69, -228.66,36.15, 323.61),
                defaultVehicle = 'italirsx',
                chosenVehicle = 'italirsx',
            },
            --2 kerre
            [7] = {
                coords = vector4(-805.23, -213.29, 36.15, 274.57),
                defaultVehicle = 'italirsx',
                chosenVehicle = 'italirsx',
            },
            [8] = {
                coords = vector4(-803.6, -216.06, 36.15, 274.57),
                defaultVehicle = 'italirsx',
                chosenVehicle = 'italirsx',
            },
            -- 1 kerr
            [9] = {
                coords = vector4(-787.22, -206.81, 36.15, 124.19),
                defaultVehicle = 'italirsx',
                chosenVehicle = 'italirsx',
            },
            -- 1 kerr
            [10] = {
                coords = vector4(-778.92, -219.55, 36.15, 54.32),
                defaultVehicle = 'italirsx',
                chosenVehicle = 'italirsx',
            },
            -- kerri nmes
            [11] = {
                coords = vector4(-791.56, -217.64, 36.40, 114.62),
                defaultVehicle = 'italirsx',
                chosenVehicle = 'italirsx',
            },
            -- kerri ngarazhd
            [12] = {
                coords = vector4(-768.11, -234.16, 36.15, 198.83),
                defaultVehicle = 'italirsx',
                chosenVehicle = 'italirsx',
            },
            -- motorret
            [13] = {
                coords = vector4(-782.02, -236.7, 36.15, 67.36),
                defaultVehicle = 'Akuma',
                chosenVehicle = 'Akuma',
            },
            [14] = {
                coords = vector4(-782.83, -234.99, 36.15, 67.36),
                defaultVehicle = 'Akuma',
                chosenVehicle = 'Akuma',
            },
            [15] = {
                coords = vector4(-783.45, -233.76, 36.15, 67.36),
                defaultVehicle = 'Akuma',
                chosenVehicle = 'Akuma',
            },
        }
    }, -- Add your next table under this comma
    ['boats'] = {
        ['Type'] = 'free-use', -- no player interaction is required to purchase a vehicle
        ['Zone'] = {
            ['Shape'] = {--polygon that surrounds the shop
                vector2(-729.39, -1315.84),
                vector2(-766.81, -1360.11),
                vector2(-754.21, -1371.49),
                vector2(-716.94, -1326.88)
            },
            ['minZ'] = 0.0, -- min height of the shop zone
            ['maxZ'] = 5.0, -- max height of the shop zone
            ['size'] = 6.2 -- size of the vehicles zones
        },
        ['Job'] = 'none', -- Name of job or none
        ['ShopLabel'] = 'Marina Shop', -- Blip name
        ['showBlip'] = true, -- true or false
        ['blipSprite'] = 410, -- Blip sprite
        ['blipColor'] = 3, -- Blip color
        ['TestDriveTimeLimit'] = 1.5, -- Time in minutes until the vehicle gets deleted
        ['Location'] = vector3(-738.25, -1334.38, 1.6), -- Blip Location
        ['ReturnLocation'] = vector3(-714.34, -1343.31, 0.0), -- Location to return vehicle, only enables if the vehicleshop has a job owned
        ['VehicleSpawn'] = vector4(-727.87, -1353.1, -0.17, 137.09), -- Spawn location when vehicle is bought
        ['TestDriveSpawn'] = vector4(-722.23, -1351.98, 0.14, 135.33), -- Spawn location for test drive
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(-727.05, -1326.59, 0.00, 229.5), -- where the vehicle will spawn on display
                defaultVehicle = 'seashark', -- Default display vehicle
                chosenVehicle = 'seashark' -- Same as default but is dynamically changed when swapping vehicles
            },
            [2] = {
                coords = vector4(-732.84, -1333.5, -0.50, 229.5),
                defaultVehicle = 'dinghy',
                chosenVehicle = 'dinghy'
            },
            [3] = {
                coords = vector4(-737.84, -1340.83, -0.50, 229.5),
                defaultVehicle = 'speeder',
                chosenVehicle = 'speeder'
            },
            [4] = {
                coords = vector4(-741.53, -1349.7, -2.00, 229.5),
                defaultVehicle = 'marquis',
                chosenVehicle = 'marquis'
            },
        },
    },
    ['air'] = {
        ['Type'] = 'free-use', -- no player interaction is required to purchase a vehicle
        ['Zone'] = {
            ['Shape'] = {--polygon that surrounds the shop
                vector2(-1607.58, -3141.7),
                vector2(-1672.54, -3103.87),
                vector2(-1703.49, -3158.02),
                vector2(-1646.03, -3190.84)
            },
            ['minZ'] = 12.99, -- min height of the shop zone
            ['maxZ'] = 16.99, -- max height of the shop zone
            ['size'] = 7.0, -- size of the vehicles zones
        },
        ['Job'] = 'none', -- Name of job or none
        ['ShopLabel'] = 'Air Shop', -- Blip name
        ['showBlip'] = true, -- true or false
        ['blipSprite'] = 251, -- Blip sprite
        ['blipColor'] = 3, -- Blip color
        ['TestDriveTimeLimit'] = 1.5, -- Time in minutes until the vehicle gets deleted
        ['Location'] = vector3(-1652.76, -3143.4, 13.99), -- Blip Location
        ['ReturnLocation'] = vector3(-1628.44, -3104.7, 13.94), -- Location to return vehicle, only enables if the vehicleshop has a job owned
        ['VehicleSpawn'] = vector4(-1617.49, -3086.17, 13.94, 329.2), -- Spawn location when vehicle is bought
        ['TestDriveSpawn'] = vector4(-1625.19, -3103.47, 13.94, 330.28), -- Spawn location for test drive
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(-1651.36, -3162.66, 12.99, 346.89), -- where the vehicle will spawn on display
                defaultVehicle = 'volatus', -- Default display vehicle
                chosenVehicle = 'volatus' -- Same as default but is dynamically changed when swapping vehicles
            },
            [2] = {
                coords = vector4(-1668.53, -3152.56, 12.99, 303.22),
                defaultVehicle = 'luxor2',
                chosenVehicle = 'luxor2'
            },
            [3] = {
                coords = vector4(-1632.02, -3144.48, 12.99, 31.08),
                defaultVehicle = 'nimbus',
                chosenVehicle = 'nimbus'
            },
            [4] = {
                coords = vector4(-1663.74, -3126.32, 12.99, 275.03),
                defaultVehicle = 'frogger',
                chosenVehicle = 'frogger'
            },
        },
    },
    ['truck'] = {
        ['Type'] = 'free-use', -- no player interaction is required to purchase a car
        ['Zone'] = {
            ['Shape'] = {--polygon that surrounds the shop
                vector2(872.23, -1173.5),
                vector2(868.88, -1162.7),
                vector2(900.91, -1156.54),
                vector2(901.96, -1173.71),
                vector2(883.59, -1174.47),
                vector2(884.59, -1161.29),
                vector2(890.06, -1155.0),
                vector2(907.71, -1168.71)
            },
            ['minZ'] = 23.0, -- min height of the shop zone
            ['maxZ'] = 28.0, -- max height of the shop zone
            ['size'] = 5.75 -- size of the vehicles zones
        },
        ['Job'] = 'none', -- Name of job or none
        ['ShopLabel'] = 'Truck Motor Shop', -- Blip name
        ['showBlip'] = true, -- true or false
        ['blipSprite'] = 477, -- Blip sprite
        ['blipColor'] = 2, -- Blip color
        ['TestDriveTimeLimit'] = 0.5, -- Time in minutes until the vehicle gets deleted
        ['Location'] = vector3(900.47, -1155.74, 25.16), -- Blip Location
        ['ReturnLocation'] = vector3(900.47, -1155.74, 25.16), -- Location to return vehicle, only enables if the vehicleshop has a job owned
        ['VehicleSpawn'] = vector4(909.35, -1181.58, 25.55, 177.57), -- Spawn location when vehicle is bought
        ['TestDriveSpawn'] = vector4(867.65, -1192.4, 25.37, 95.72), -- Spawn location for test drive
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(890.84, -1170.92, 25.08, 269.58), -- where the vehicle will spawn on display
                defaultVehicle = 'hauler', -- Default display vehicle
                chosenVehicle = 'hauler', -- Same as default but is dynamically changed when swapping vehicles
            },
            [2] = {
                coords = vector4(878.45, -1171.04, 25.05, 273.08),
                defaultVehicle = 'phantom',
                chosenVehicle = 'phantom'
            },
            [3] = {
                coords = vector4(880.44, -1163.59, 24.87, 273.08),
                defaultVehicle = 'mule',
                chosenVehicle = 'mule'
            },
            [4] = {
                coords = vector4(896.95, -1162.62, 24.98, 273.08),
                defaultVehicle = 'mixer',
                chosenVehicle = 'mixer'
            },
        },
    },
}
