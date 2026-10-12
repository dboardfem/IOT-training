#!/usr/bin/env bash
# Runs once when the codespace is first created.
set -e
echo "Installing Node-RED..."
npm install -g --unsafe-perm node-red
echo "Installing the Node-RED dashboard nodes..."
mkdir -p ~/.node-red
cd ~/.node-red
npm install --no-fund --no-audit @flowfuse/node-red-dashboard
echo "Installing Mosquitto MQTT broker..."
sudo apt-get update -y
sudo apt-get install -y mosquitto mosquitto-clients
echo "Setup finished. Run:  bash start.sh"
