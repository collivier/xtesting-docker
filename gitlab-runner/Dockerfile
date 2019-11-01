FROM gitlab/gitlab-runner:alpine

RUN apk --no-cache add --update sudo docker findutils && \
    (cd /usr/bin && wget https://dl.minio.io/client/mc/release/linux-amd64/mc && chmod +x mc) && \
    echo "gitlab-runner ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/gitlab-runner
