FROM jenkins/inbound-agent

# Switch to root user to install dependencies
USER root

# Install Node.js (version 18) and Docker in a single RUN command
RUN apt-get update && \
    apt-get install -y curl gnupg lsb-release docker.io && \
    curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && \
    apt-get install -y nodejs && \
    apt-get clean && rm -rf /var/lib/apt/lists/*


# Switch back to the Jenkins user
USER jenkins
