fx_version 'adamant'
games { 'gta5' }

mod 'QB AP DOCUMENTS'
version '1.0'

lua54 'yes'

ui_page 'html/index.html'

files {
    'html/*.*'
}

shared_scripts {
  'config.lua',
  'shared/documents.lua'
}

client_scripts {
  'client/main.lua',
  'client/menu.lua'
}

server_scripts {
  '@mysql-async/lib/MySQL.lua',
  'server/main.lua'
}

escrow_ignore {
	'config.lua',
  'shared/documents.lua',
  'client/menu.lua'
}
dependency '/assetpacks'