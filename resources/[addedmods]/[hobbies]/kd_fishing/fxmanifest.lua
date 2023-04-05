fx_version 'cerulean'
game 'gta5'

author 'IamKiddd#3614'
description 'Fishing'
version '1.0.0'

client_scripts {
    'client/*.lua',
}

server_scripts {
    'server/cron.lua',
    'server/sv_main.lua',
}

shared_scripts {
	'@ox_lib/init.lua',
    'config.lua'
}

dependencies {
	'rep-tablet',
	'ox_lib',
}

escrow_ignore {
    'client/cl_main.lua',  -- Only ignore one file
    'server/sv_main.lua',
    'config.lua',
    'README.MD',
}

lua54 'yes'
dependency '/assetpacks'