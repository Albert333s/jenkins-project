# Dockerfile for jenkins-slave-fe or jenkins-slave-be
FROM jenkins/inbound-agent

USER root
RUN apt-get update && \
    apt-get install -y docker.io procps && \
    apt-get clean

# Copy dockerd-entrypoint.sh to the container
COPY ./jenkins-slave-fe/dockerd-entrypoint.sh /usr/local/bin/dockerd-entrypoint.sh


# Set executable permission for dockerd-entrypoint.sh
RUN chmod +x /usr/local/bin/dockerd-entrypoint.sh

# Set entrypoint
ENTRYPOINT ["/usr/local/bin/dockerd-entrypoint.sh"]
