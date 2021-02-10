FROM ubuntu:bionic

ARG VERSION=3.36

RUN apt-get update && \
    apt-get install openjdk-11-jre git-lfs docker.io curl -y && \
    curl --create-dirs -k -fsSLo /usr/share/jenkins/agent.jar https://repo.jenkins-ci.org/public/org/jenkins-ci/main/remoting/${VERSION}/remoting-${VERSION}.jar && \
    apt-get remove --purge curl -y && \
    apt-get autoremove -y && apt-get clean && rm -rf /var/lib/apt/lists/*
