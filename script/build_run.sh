#!/bin/bash

# Take port number from environment variable
port_number="$PORT"
dart run build_runner build --delete-conflicting-outputs
dart pub global activate nenuphar_cli
# If the port is already in use, kill the process
lsof -t -i:"$port_number" | xargs kill -9
