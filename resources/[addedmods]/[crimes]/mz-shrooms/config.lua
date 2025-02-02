local QBCore = exports['qb-core']:GetCoreObject()

--------------
--MZ-SHROOMS--
--------------

Config = {}

Config.ShroomField = vector3(3266.64, 5215.32, 19.65)       -- Location of shroom field - PLEASE NOTE: NO SUPPORT OFFERED FOR LOCATION CHANGES
Config.ShroomHeight = 18.66                                 -- The height at which you want the shroom prop to appear i.e. set it to the ground level or the "z" level 
                                                            -- (When setting the zone for shrooms to appear please use flat open areas, not hills.) 
Config.ShroomRounded = 19                                   -- Round the shroom height from the previous variable to the nearest whole number

Config.ShroomProp = `prop_stoneshroom1`                     -- GTA V prop asset to be collected

Config.NotifyType = "qb"                                  -- Notification type: 'qb' for qb-core standard notifications, 'okok' for okokNotify notifications

Config.mzskills = true                                      -- Change to "false" to run resource without regard to mz-skills "Drug Manufacturing"
-- if Config.mzskills = true, then the following parameters apply: 
Config.drugXPlow = 1                                        -- Lowest "Drug Manufacture" XP awarded to player.
Config.drugXPhigh = 3                                       -- Highest "Drug Manufacture" XP awarded to player.
Config.drugXPloss = 2                                       -- "Drug Manufacture" XP lost for failing skill check.

Config.skillcheck = true                                   -- Change to "false" to remove skillchecks from picking and crafting processes.
--Picking shrooms
Config.ShroomskillCheck = 1                                 -- Lowest number of parses of the skill check
Config.ShroomskillTime = 10                                 -- Time to complete skill check, the lower - the more difficult. 
Config.Doublechance = 10                                    -- Chance (in percentage) to pull two mushrooms at once. (Set to 0 to disable)

--Making gloves
Config.MakeGlovesLow = 3                                    -- Lowest number of parses of the skill check
Config.MakeGlovesHigh = 5                                   -- Highest number of parses of the skill check
Config.MakeGlovesBarLow = 7                                 -- Lowest time it takes (in seconds) to craft gardening gloves.
Config.MakeGlovesBarHigh = 12                               -- Highest time it takes (in seconds) to craft gardening gloves.
Config.FabricNeeded = 5                                     -- Amount of fabric needed to craft gardening gloves (fabric comes from mz-bins if not otherwise in the server)

--Making shroom bag
Config.MakeShroomBagsLow = 2                                -- Lowest number of parses of the skill check to make shroom bags.
Config.MakeShroomBagsHigh = 4                               -- Highest number of parses of the skill check to make shroom bags.
Config.MakeBagTimeLow = 2                                   -- Lowest time it takes (in seconds) to craft drug bag.
Config.MakeBagTimeHigh = 4                                  -- Highest time it takes (in seconds) to craft drug bag.
Config.PlasticNeeded = 2                                    -- Number of plastic needed to make a shroom baggy.

--Bag up shrooms
Config.BagShroomsLow = 3                                    -- Lowest number of parses of the skill check
Config.BagShroomsHigh = 5                                   -- Highest number of parses of the skill check
Config.BagShroomsTimeLow = 4                                -- Lowest time it takes (in seconds) to bag up shrooms.
Config.BagShroomsTimeHigh = 8                               -- Highest time it takes (in seconds) to bag up shrooms.
Config.ShroomsNeeded = 5                                    -- Number of shrooms needed to make a bag them up.

--Glove tear (removes gloves from player)
Config.GloveTearFailChance = 15                             -- percentage chance to remove gloves from player upon player failing skill check (set to 0 to disable)
Config.GloveTearSuccessChance = 2                           -- percentage chance to remove gloves from player even if player is successful at skill check (set to 0 to disable)

--MZ-SKILLS
----------
--OUTPUT--
----------
-- (amount of final product player gets based on Drug Manufacturing level - with mz-skills)
--Level 0--
Config.Shroomlevel0low = 1
Config.Shroomlevel0high = 3
--Level 1--
Config.Shroomlevel1low = 2
Config.Shroomlevel1high = 4
--Level 2--
Config.Shroomlevel2low = 3
Config.Shroomlevel2high = 5
--Level 3--
Config.Shroomlevel3low = 3
Config.Shroomlevel3high = 7
--Level 4--
Config.Shroomlevel4low = 4
Config.Shroomlevel4high = 8
--Level 5--
Config.Shroomlevel5low = 4
Config.Shroomlevel5high = 10
--Level 6--
Config.Shroomlevel6low = 5
Config.Shroomlevel6high = 11
--Level 7--
Config.Shroomlevel7low = 6
Config.Shroomlevel7high = 12
--Level 8--
Config.Shroomlevel8low = 6
Config.Shroomlevel8high = 14

--OUTPUT (amount of final product player gets based on Drug Manufacturing level - with no mz-skills)
Config.ShroomNoXPlow = 4
Config.ShroomNoXPhigh = 8