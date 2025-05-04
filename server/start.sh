#!/bin/bash

if [ ! -e "./vars/db-initiated" ]; then
    sleep 5
    echo "y" | dotnet exec FSO.Server.Core.dll db-init
    touch vars/db-initiated
fi

dotnet exec FSO.Server.Core.dll run
