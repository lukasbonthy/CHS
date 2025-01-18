#!/bin/bash
echo "Starting..."
cd bungee

# Replace placeholder in config.yml with the value of the SERVER environment variable
sed -i 's/${SERVER}/'"$SERVER"'/g' config.yml

# Start the BungeeCord server
java -Xmx1024M -Xms1024M -jar bungee.jar

# Add confirmation code after BungeeCord starts
echo "Confirm-code: 1ac4e20429"
