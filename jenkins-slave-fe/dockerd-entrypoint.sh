#!/bin/bash

# Start Docker Daemon with logging to /tmp
dockerd > /tmp/dockerd.log 2>&1 &
sleep 10  # Wait for Docker Daemon to start up

# Check if Docker Daemon started successfully by looking for the process ID of dockerd
if ! ps aux | grep -q '[d]ockerd'; then
    echo "Docker Daemon failed to start."
    cat /tmp/dockerd.log
    exit 1
fi

# Execute the Jenkins agent entrypoint (default entrypoint of the jenkins/inbound-agent image)
exec /usr/local/bin/jenkins-agent "$@"
