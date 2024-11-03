# Use the Jenkins inbound agent as a base image
FROM jenkins/inbound-agent

USER root
# Install Maven
RUN apt-get update && apt-get install -y maven

RUN apt-get update && apt-get install -y docker.io