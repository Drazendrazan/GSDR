Config = {}

Config.DogModelProps = { 
	[1] = { -- Number of dogs can be infinite
		["Header"] = "K-9 Shepherd", -- Menu Header
		["Text"] = "German Shepherd K-9 Unit",
		["Dog"] = "a_c_shepherd", -- Dog stats
		["Colour"] = 0, -- Normally 1-3 -- Dog stats
		["Vest"] = 2, -- Dog stats
		["Patch"] = 0,
	},
	[2] = {
		["Header"] = "K-9 Husky",
		["Text"] = "Husky K-9 Unit",
		["Dog"] = "a_c_husky",
		["Colour"] = 0,
		["Vest"] = 3,
		["Patch"] = 0,
	},
	[3] = { -- Number of dogs can be infinite
		["Header"] = "K-9 Rottweiler", -- Menu Header
		["Text"] = " K-9 Unit",
		["Dog"] = "a_c_chop", -- Dog stats
		["Colour"] = 0, -- Normally 1-3 -- Dog stats
		["Vest"] = 4,
		["Patch"] = 4, -- Dog stats
	},
	[3] = { -- Number of dogs can be infinite
		["Header"] = "K-9 Sheriff", -- Menu Header
		["Text"] = " K-9 Unit",
		["Dog"] = "a_c_shepherd", -- Dog stats
		["Colour"] = 0, -- Normally 1-3 -- Dog stats
		["Vest"] = 1,
		["Patch"] = 1, -- Dog stats
	},
}

Config.Doghouses = {
	{ coords = vector4(458.43, -974.49, 25.7, 158.66), }, -- MRPD
	{ coords = vector4(360.6, -1618.54, 29.29, 320.18), }, -- Davis
}

Config.Authorized = { ["police"] = 2, ["sasp"] = 2, ["bcso"] = 2, } -- This is setup as [JOB] = [GRADE]

Config.K9Search = {
	"joint",
	"cokebaggy",
	"crack_baggy",
	"xtcbaggy",
	"weed_white-widow",
	"weed_skunk",
	"weed_purple-haze",
	"weed_og-kush",
	"weed_amnesia",
	"weed_ak47",
	"weed_brick",
	"coke_brick",
	"coke_small_brick",
	"puremeth",
	"meth",
	"weapon_pistol",
	"weapon_pistol50",
	"weapon_appistol",
	"weapon_combatpistol",
	"weapon_heavypistol",
	"weapon_snspistol",
	"weapon_vintagepistol",
	"weapon_revolver",
	"weapon_doubleaction",
	"weapon_ceramicpistol",
	"weapon_navyrevolver",
	"weapon_microsmg",
	"weapon_smg",
	"weapon_smg_mk2",
	"weapon_assaultsmg",
	"weapon_combatpdw",
	"weapon_machinepistol",
	"weapon_minismg",
	"weapon_pumpshotgun",
	"weapon_sawnoffshotgun",
	"weapon_assaultshotgun",
	"weapon_bullpupshotgun",
	"weapon_musket",
	"weapon_heavyshotgun",
	"weapon_dbshotgun",
	"weapon_autoshotgun",
	"weapon_pumpshotgun_mk2",
	"weapon_combatshotgun",
	"weapon_beanbag",
	"weapon_assaultrifle",
	"weapon_assaultrifle_mk2",
	"weapon_carbinerifle",
	"weapon_carbinerifle_mk2",
	"weapon_advancedrifle",
	"weapon_specialcarbine",
	"weapon_bullpuprifle",
	"weapon_compactrifle",
	"weapon_specialcarbine_mk2",
	"weapon_bullpuprifle_mk2",
	"weapon_militaryrifle",
	"weapon_mg",
	"weapon_combatmg",
	"weapon_gusenberg",
	"weapon_combatmg_mk2",
	"weapon_sniperrifle",
	"weapon_heavysniper",
	"weapon_marksmanrifle",
	"weapon_remotesniper",
	"weapon_heavysniper_mk2",
	"weapon_marksmanrifle_mk2",
	"weapon_rpg",
	"weapon_grenadelauncher",
	"weapon_minigun",
	"weapon_firework",
	"weapon_hominglauncher",
	"weapon_compactlauncher",
	"weapon_grenade",
	"weapon_bzgas",
	"weapon_molotov",
	"weapon_stickybomb",
	"weapon_proxmine",
	"weapon_pipebomb",
};
