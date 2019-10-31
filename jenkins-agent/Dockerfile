FROM jenkins/jnlp-slave:alpine

USER root

RUN apk --no-cache add --update docker findutils python && \
    (cd /usr/bin && wget https://dl.minio.io/client/mc/release/linux-amd64/mc && chmod +x mc) && \
    wget https://storage.googleapis.com/pub/gsutil.tar.gz && \
    tar zxvf gsutil.tar.gz && \
    mv gsutil/gsutil /usr/bin && \
    mv gsutil/* /usr/lib/python2.7/site-packages && \
    rm -rf gsutil gsutil.tar.gz
