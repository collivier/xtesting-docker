FROM opnfv/xtesting-jenkins-agent

COPY auto.sh /usr/local/bin/auto.sh
RUN apt-get update && apt-get install curl -y && \
    chmod 755 /usr/local/bin/auto.sh && \
    apt-get clean && rm -rf /var/lib/apt/lists/*
CMD auto.sh
