# Dockerfile for jenkins-slave-fe
FROM jenkins/inbound-agent

USER root

# Set the working directory
WORKDIR /home/jenkins

# Update and install necessary packages
RUN apt-get update && \
    apt-get install -y docker.io procps dos2unix && \
    apt-get clean


# Copy dockerd-entrypoint.sh to the container
COPY ./jenkins-slave-fe/dockerd-entrypoint.sh /usr/local/bin/dockerd-entrypoint.sh

# # Convert line endings to Unix format to prevent issues on Linux systems
# RUN dos2unix /usr/local/bin/dockerd-entrypoint.sh

# Set executable permission for dockerd-entrypoint.sh
RUN chmod +x /usr/local/bin/dockerd-entrypoint.sh

# Set entrypoint
ENTRYPOINT ["/usr/local/bin/dockerd-entrypoint.sh"]
