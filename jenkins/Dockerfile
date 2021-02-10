FROM jenkins/jenkins:lts-alpine

USER root
ENV JAVA_OPTS="-Djenkins.install.runSetupWizard=false"
ENV JENKINS_UC_DOWNLOAD="http://ftp-nyc.osuosl.org/pub/jenkins"
COPY security.groovy /usr/share/jenkins/ref/init.groovy.d/security.groovy
COPY plugins.txt plugins.txt
RUN apk --no-cache add --update docker && \
    /usr/local/bin/install-plugins.sh < plugins.txt && \
    rm plugins.txt
