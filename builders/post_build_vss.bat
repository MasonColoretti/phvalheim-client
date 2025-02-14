echo off
set ProjectDir=%1
set Configuration=%2

echo
echo "Project Dir: " %ProjectDir%
echo "Configuration: " %Configuration%
echo

REM Linux (not used, moved to dockerized builds for Linux)
REM mkdir %ProjectDir%\bin\%Configuration%\net6.0\linux-x64
REM copy %ProjectDir%\bin\%Configuration%\net6.0\phvalheim-client.runtimeconfig.json %ProjectDir%\bin\%Configuration%\net6.0\linux-x64\phvalheim-client.runtimeconfig.json
REM dotnet publish -c %Configuration% -r linux-x64 -p:PublishSingleFile=true --self-contained true .\phvalheim-client.csproj /property:GenerateFullPaths=true /consoleloggerparameters:NoSummary /p:PublishTrimmed=false --no-build


REM Windows
REM mkdir %ProjectDir%\bin\%Configuration%\net6.0\win-x64
REM mkdir %ProjectDir%\obj\%Configuration%\net6.0\win-x64
REM copy %ProjectDir%\bin\%Configuration%\net6.0\phvalheim-client.runtimeconfig.json %ProjectDir%\bin\%Configuration%\net6.0\win-x64\phvalheim-client.runtimeconfig.json
REM copy %ProjectDir%\bin\%Configuration%\net6.0\phvalheim-client.dll %ProjectDir%\obj\%Configuration%\net6.0\win-x64\phvalheim-client.dll
REM copy %ProjectDir%\bin\%Configuration%\net6.0\phvalheim-client.pdb %ProjectDir%\obj\%Configuration%\net6.0\win-x64\phvalheim-client.pdb
REM copy %ProjectDir%\obj\%Configuration%\net6.0\apphost.exe %ProjectDir%\obj\%Configuration%\net6.0\win-x64\singlefilehost.exe
dotnet publish -c %Configuration% -r win-x64 -p:PublishSingleFile=true --self-contained true %ProjectDir%\phvalheim-client.csproj /property:GenerateFullPaths=true /consoleloggerparameters:NoSummary /p:PublishTrimmed=false --no-build

