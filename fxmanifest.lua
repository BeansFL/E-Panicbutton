fx_version 'cerulean'
games  { 'gta5' }
author 'BeansFL'
description 'Evolved-PanicButton'
discord 'https://discord.gg/yFVfD5m4Wr'
version '1.1.0'
lua54 'yes'

shared_scripts {
    'config.lua',
    '@es_extended/imports.lua' -- comment out if you use qbcore
}

client_scripts {
    'client.lua'
}

server_scripts {
    'server.lua',
    'Webhook.lua'
}

ui_page "html/index.html"
 

files {
	"html/index.html",
	"html/sounds/*.ogg",
    'html/js/*.js',
    'html/index.html',
    'html/css/*.css',
    'html/webfonts/*.ttf'
}
