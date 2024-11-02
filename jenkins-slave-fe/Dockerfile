# Use the Jenkins inbound agent as a base image
FROM jenkins/inbound-agent:lts

# Switch to root user to install dependencies
USER root

# Install Node.js, npm, and Docker
RUN apt-get update && \
    apt-get install -y curl gnupg docker.io && \
    curl -sL https://deb.nodesource.com/setup_14.x | bash - && \
    apt-get install -y nodejs && \
    apt-get clean

# Switch back to the Jenkins user
USER jenkins
