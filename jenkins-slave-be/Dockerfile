# Use the Jenkins inbound agent as a base image
FROM jenkins/inbound-agent

USER root
# Install Maven
RUN apt-get update && apt-get install -y maven

RUN apt-get update && apt-get install -y docker.io

# Copy dockerd-entrypoint.sh to the container
COPY ./jenkins-slave-be/dockerd-entrypoint.sh /usr/local/bin/dockerd-entrypoint.sh


# Set executable permission for dockerd-entrypoint.sh
RUN chmod +x /usr/local/bin/dockerd-entrypoint.sh

# Set entrypoint
ENTRYPOINT ["/usr/local/bin/dockerd-entrypoint.sh"]
