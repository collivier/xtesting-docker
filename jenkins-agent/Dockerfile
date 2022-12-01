FROM debian:bullseye

ARG VERSION=4.9

RUN apt-get update && apt-get dist-upgrade -y && \
    apt-get install openjdk-11-jre git-lfs docker.io curl -y && \
    curl --create-dirs -k -fsSLo /usr/share/jenkins/agent.jar https://repo.jenkins-ci.org/public/org/jenkins-ci/main/remoting/${VERSION}/remoting-${VERSION}.jar && \
    curl --create-dirs -k -fsSLo /usr/local/bin/jenkins-agent https://raw.githubusercontent.com/jenkinsci/docker-inbound-agent/master/jenkins-agent && \
    chmod a+x /usr/local/bin/jenkins-agent && \
    apt-get remove --purge curl -y && \
    apt-get autoremove -y && apt-get clean && rm -rf /var/lib/apt/lists/*
