fx_version "cerulean"
game "gta5"

author '(Wick)#5854'
description 'FirefighterJob'
version '1.3.0'

shared_scripts {
	'@qb-core/shared/locale.lua',
    'locales/en.lua',
    'locales/*.lua',
    'config.lua'
}

client_scripts {
    'client/*.lua'
}

server_script 'server/*.lua'

-- NUI Default Page
ui_page "html/index.html"


files {
	"html/index.html",
	'html/sounds/*.mp3',
	'hose/*.meta'
}

-- data_file for hose
-- free on https://github.com/LondonStudios/HoseLS
data_file 'WEAPONINFO_FILE' 'hose/weapons.meta'
data_file 'WEAPON_METADATA_FILE' 'hose/weaponarchetypes.meta'
data_file 'WEAPON_SHOP_INFO' 'hose/shop_weapon.meta'
data_file 'WEAPON_ANIMATIONS_FILE' 'hose/weaponanimations.meta'
data_file 'CONTENT_UNLOCKING_META_FILE' 'hose/contentunlocks.meta'
data_file 'LOADOUTS_FILE' 'hose/loadouts.meta'
data_file 'PED_PERSONALITY_FILE' 'hose/pedpersonality.meta'

-- Export function
export { 
	'PagePagers',
	'SoundFireSiren'
}

lua54 'yes'