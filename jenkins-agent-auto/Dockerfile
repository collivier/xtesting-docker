FROM opnfv/xtesting-jenkins-agent:3283-bullseye

COPY auto.sh /usr/local/bin/auto.sh
RUN apt-get update && apt-get dist-upgrade -y && apt-get install curl -y && \
    chmod 755 /usr/local/bin/auto.sh && \
    apt-get clean && rm -rf /var/lib/apt/lists/*
CMD auto.sh
