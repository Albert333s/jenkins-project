# Use the Jenkins inbound agent as a base image
FROM jenkins/inbound-agent

# Switch to root user to install dependencies
USER root

# Install Node.js (version 18) which includes npm
RUN apt-get update && \
    apt-get install -y curl gnupg && \
    curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && \
    apt-get install -y nodejs && \
    apt-get clean

# Verify Node.js and npm installations
RUN node -v && npm -v

# Switch back to the Jenkins user
USER jenkins
