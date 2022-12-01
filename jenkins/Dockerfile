FROM jenkins/jenkins:lts-alpine

USER root
ENV JAVA_OPTS="-Djenkins.install.runSetupWizard=false"
ENV CASC_JENKINS_CONFIG="/var/jenkins_home/casc_configs"
COPY plugins.txt plugins.txt
COPY jenkins.yaml /usr/share/jenkins/ref/casc_configs/jenkins.yaml
RUN apk -U upgrade && \
    apk --no-cache add --update docker && \
    jenkins-plugin-cli -f plugins.txt && \
    rm plugins.txt
