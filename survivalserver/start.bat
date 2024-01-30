#!/bin/bash
# Start the server
java -Xmx4G -Xms1G -jar server.jar nogui
# Check if the server process has stopped
while true
do
    # If it has stopped, restart it
    if ! pgrep -x "java" > /dev/null
    then
        java -Xmx4G -Xms1G -jar server.jar nogui
    fi
    # Wait for a short period before checking again
    sleep 5
done