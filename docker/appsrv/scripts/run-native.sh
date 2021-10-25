#!/usr/bin/env bash

RUNNER=$(ls application-server-*-runner.jar)

while ! nc -z mysql 3306; do   
    echo "waiting for godot..."
    sleep 1
done

echo "starting quarkus $RUNNER..."
./application