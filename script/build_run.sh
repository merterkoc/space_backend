#!/bin/bash

# Take port number from environment variable
port_number="$PORT"
dart pub global activate dart_frog_cli
dart run build_runner build --delete-conflicting-outputs
dart_frog build
# If the port is already in use, kill the process
lsof -t -i:"$port_number" | xargs kill -9
dart_frog dev
