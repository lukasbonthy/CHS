#!/bin/bash
echo "starting..."
cd bungee

# Replace the placeholder in the config.yml file with the SERVER variable
sed -i 's/${SERVER}/'"$SERVER"'/g' config.yml

# Start the Bungee server
java -Xmx1024M -Xms1024M -jar bungee.jar &

# Wait for Bungee to start (adjust the sleep time as necessary)
sleep 80

# Run the confirm-code command for EaglerXBungee after Bungee has started
java -jar /bungee/plugins/EaglerXBungee-1.2.6.jar confirm-code 6f5480d69b
