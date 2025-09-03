#!/bin/bash
# Simple simulator that sends random temperature data to the API        
while true ; do
#    # Current date
    d=$(date -u +"%Y-%m-%dT%H:%M:%SZ")
    # Random temperature between 20 and 34°C
    temp=$(( ( RANDOM % 15 )  + 20 ))
    # Send data to API
    curl -XPOST -H "Content-Type: application/json" -d '{"ts":"'${d}'", "type": "temp", "value": "'${temp}'", "sensor_id": 123 }' http://localhost:1337/data
    sleep 2
done