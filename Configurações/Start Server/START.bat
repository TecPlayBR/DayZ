@echo off
:start
::Server name (This is just for the bat file)
set serverName= TECZ
::Server files location
set serverLocation="E:\Server\DayZ\DayZServer"
::Server Port
set serverPort=2302
::Server config
set serverConfig=serverDZ.cfg
::Logical CPU cores to use (Equal or less than available)
set serverCPU=6
::Client-side mods (o player baixa). Separe por ; -- ex: @CF;@Community-Online-Tools
set clientMods=
::Server-side mods (so no server, o player NAO baixa). Separe por ; -- ex: @AdminTool
set serverMods=
::Sets title for terminal (DONT edit)
title %serverName% batch
::DayZServer location (DONT edit)
cd "%serverLocation%"
echo (%time%) %serverName% started.
::Launch parameters (edit end: -config=|-port=|-profiles=|-doLogs|-adminLog|-netLog|-freezeCheck|-filePatching|-BEpath=|-cpuCount=)
start "DayZ Server" /min "DayZServer_x64.exe" -config=%serverConfig% -port=%serverPort% "-mod=%clientMods%" "-serverMod=%serverMods%" "-profiles=config" -cpuCount=%serverCPU% -dologs -adminlog -netlog -freezecheck
::Time in seconds before kill server process (14400 = 4 hours)
timeout 43200
taskkill /im DayZServer_x64.exe /F
::Time in seconds to wait before..
timeout 5
::Go back to the top and repeat the whole cycle again
goto start
