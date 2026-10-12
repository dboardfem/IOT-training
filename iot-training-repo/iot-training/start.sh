#!/usr/bin/env bash
# Start the MQTT broker and Node-RED. Run this each time you open the codespace.
if ! pgrep -x mosquitto >/dev/null; then
  mosquitto -d
  echo "Mosquitto MQTT broker started on localhost:1883"
else
  echo "Mosquitto is already running"
fi
echo "Starting Node-RED... open the PORTS tab and click the globe icon next to port 1880"
node-red
