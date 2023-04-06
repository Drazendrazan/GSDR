fx_version 'cerulean'
game 'gta5'
lua54 'yes'

version 'v1.1'
description 'Intro Cutscene Script'
author '3RROR'

shared_scripts {
	'shared.lua'
}
   
client_scripts{
   	'client/main.lua',
	'client/open.lua',
} 

escrow_ignore {
	'shared.lua',
	'client/open.lua',
}



dependency '/assetpacks'