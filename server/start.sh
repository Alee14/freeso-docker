#!/bin/bash

if [ ! -e "./db-initiated" ]; then
    sleep 10
    echo "y" | dotnet exec FSO.Server.Core.dll db-init
    touch db-initiated
else
#while [ $? -ne 2 ]; do
    #mono watchdog.exe run --core
    #dotnet exec FSO.Server.Core.dll run
#done
#    dotnet exec watchdog.exe run --core
    dotnet exec FSO.Server.Core.dll run
    sleep 5
fi
