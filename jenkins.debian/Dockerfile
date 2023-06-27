FROM docker.io/jenkins/jenkins:lts-slim

USER root
ENV JAVA_OPTS="-Djenkins.install.runSetupWizard=false"
ENV CASC_JENKINS_CONFIG="/var/jenkins_home/casc_configs"
COPY plugins.txt plugins.txt
COPY jenkins.yaml /usr/share/jenkins/ref/casc_configs/jenkins.yaml
RUN apt-get update && apt-get dist-upgrade -y && apt-get install docker.io podman -y && \
    jenkins-plugin-cli -f plugins.txt && \
    mkdir -p ~/.config/containers && \
    echo 'unqualified-search-registries=["docker.io", "quay.io"]' > ~/.config/containers/registries.conf && \
    echo '[engine]' > ~/.config/containers/containers.conf && \
    echo 'cgroup_manager = "cgroupfs"' >>  ~/.config/containers/containers.conf && \
    echo 'events_logger = "file"' >>  ~/.config/containers/containers.conf && \
    rm plugins.txt
