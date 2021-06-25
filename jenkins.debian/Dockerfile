FROM jenkins/jenkins:lts-slim

USER root
ENV JAVA_OPTS="-Djenkins.install.runSetupWizard=false"
ENV CASC_JENKINS_CONFIG="/var/jenkins_home/casc_configs"
COPY plugins.txt plugins.txt
COPY jenkins.yaml /usr/share/jenkins/ref/casc_configs/jenkins.yaml
RUN apt-get update && apt-get install docker.io -y && \
    jenkins-plugin-cli --plugins < plugins.txt && \
    rm plugins.txt
