#!/bin/bash

# shellcheck disable=SC2034
for i in {1..3}; do
    curl -X POST -H "Content-Type: application/json" -d '{
        "fcmToken" : "token",
        "coordinate" : {
            "latitude" : 32.00,
            "longitude" : 32.99
        },
        "to": "/topics/all"
    }' "http://localhost:8080/api/client/user/device" &
done