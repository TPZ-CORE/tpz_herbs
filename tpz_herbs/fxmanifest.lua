fx_version "adamant"
games {"rdr3"}
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'

author 'Nosmakos'
description 'TPZ-CORE Herbs'
version '1.0.0'

client_scripts { 'client/*.lua', 'client/main.js' }
server_scripts { 'server/*.lua' }

exports { 'DataViewNativeGetEventData' }

lua54 'yes'
