@echo off
:: Game Runner
cd ./runner-publish/
start "" dotnet GameRunner.dll
echo Game Runner Ready

:: Game Engine
cd ../engine-publish/
timeout /t 1 /nobreak
start "" dotnet Engine.dll
echo Game Engine Ready

:: Game Logger
cd ../logger-publish/
timeout /t 1 /nobreak
start "" dotnet Logger.dll
echo Game Logger Ready

pause