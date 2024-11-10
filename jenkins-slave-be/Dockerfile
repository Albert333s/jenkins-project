# Use the Jenkins inbound agent as a base image
FROM jenkins/inbound-agent

USER root

# Set the working directory
WORKDIR /home/jenkins

# Install Maven, Docker, procps, and dos2unix
RUN apt-get update && \
    apt-get install -y maven docker.io procps dos2unix && \
    apt-get clean

# Copy dockerd-entrypoint.sh to the container
COPY ./jenkins-slave-be/dockerd-entrypoint.sh /usr/local/bin/dockerd-entrypoint.sh

# Convert line endings to Unix format to prevent issues on Linux systems
# RUN dos2unix /usr/local/bin/dockerd-entrypoint.sh

# Set executable permission for dockerd-entrypoint.sh
RUN chmod +x /usr/local/bin/dockerd-entrypoint.sh

# Set entrypoint
ENTRYPOINT ["/usr/local/bin/dockerd-entrypoint.sh"]
