#!/bin/bash

echo "Starting setup..."

# Navigate to the bungee directory
if ! cd bungee; then
    echo "Error: Could not change to 'bungee' directory. Exiting."
    exit 1
fi

# Check if SERVER environment variable is set
if [ -z "$SERVER" ]; then
    echo "Error: SERVER environment variable is not set. Exiting."
    exit 1
fi

# Replace placeholder in config.yml with the SERVER value
if [ -f config.yml ]; then
    sed -i "s/\${SERVER}/$SERVER/g" config.yml
    echo "Updated config.yml with SERVER value: $SERVER"
else
    echo "Error: config.yml file not found. Exiting."
    exit 1
fi

# Start the BungeeCord server
echo "Starting BungeeCord server..."
if java -Xmx1024M -Xms1024M -jar bungee.jar; then
    echo "BungeeCord server started successfully."
    echo "Confirm-code: 1ac4e20429"
else
    echo "Error: Failed to start BungeeCord server. Exiting."
    exit 1
fi
