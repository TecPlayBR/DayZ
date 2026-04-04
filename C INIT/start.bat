@echo off
:start
::Server name [!EDIT THIS!]
set serverName=TECZ - TECPLAY SERVER - PVE-PVP
::Server files location [DEFAULT !EDIT AS NEEDED!]
set serverDirectory="F:\DayZ - Testes"
::Server Port [DEFAULT]
set serverPort=2302
::Server config [DEFAULT. hostname= in serverDZ.cfg is what shows in the steam server browser. !EDIT AS NEEDED!.]
set serverConfig=serverDZ.cfg
::Server profile location. logfiles are written here and mods are configured here [DEFAULT]
set serverProfile=profiles
::Logical CPU cores to use (Equal or less than available)
set serverCPU=6
::modlist should be of the form "-mod=@mod1;@mod2;@mod3;"

:: Habilita a expansão de variáveis
setlocal enabledelayedexpansion

:: Inicializa a variável modList com o prefixo correto (sem -mod repetido)
set modList=

:: Itera sobre o arquivo de mods e construa a lista
for /f "delims=" %%i in (modlist.txt) do (
    set modList=!modList!%%i;
)

:: Remove o ponto e vírgula extra no final
set modList=!modList:~0,-1!

:: Adiciona o -mod no início e as aspas no começo e no fim
set modList="-mod=!modList!"

:: Exibe a lista de mods montada para conferir
echo !modList!

::Sets title for terminal (DONT edit)
title %serverName% batch
::DayZServer location (DONT edit)
cd /D "%serverDirectory%"
:: makes the profile directory if it doesn't already exist
if not exist "%serverProfile%" ( 
mkdir %serverProfile% > nul
) 
echo (%time%) %serverName% started.
::Launch parameters (edit end: -config=|-port=|-profiles=|-doLogs|-adminLog|-netLog|-freezeCheck|-filePatching|-BEpath=|-cpuCount=)
start "DayZ Server" /min DayZServer_x64.exe -config=%serverConfig% -port=%serverPort% -profiles=%serverProfile% -BEpath=battleye %modList% -cpuCount=%serverCPU% -dologs -adminlog -netlog -freezecheck

::Time in seconds before kill server process (14400 = 4 hours)
timeout 43200
taskkill /im DayZServer_x64.exe /F
::Time in seconds to wait before..
timeout 10
::Go back to the top and repeat the whole cycle again
goto start