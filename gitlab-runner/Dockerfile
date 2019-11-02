FROM gitlab/gitlab-runner:alpine

RUN apk --no-cache add --update sudo docker && \
    echo "gitlab-runner ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/gitlab-runner
