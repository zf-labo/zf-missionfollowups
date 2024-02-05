fx_version 'cerulean'
game 'gta5'
lua54 'yes'

ui_page 'ui/index.html'
files { 'ui/**/**' }

shared_scripts {
    '@zf-lib/init.lua',
    '@ox_lib/init.lua',
    --'config.lua'
}

client_script 'client.lua'