#!/bin/bash

date

cd /etc/mosquitto/
./generate-CA.sh cisco

echo 'Restarting MQTT Server with SSL'
service mosquitto restart

sleep inf

