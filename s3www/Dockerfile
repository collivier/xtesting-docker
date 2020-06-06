FROM golang:1.14-alpine3.12

ENV ENDPOINT http://127.0.0.1:9000
ENV ACCESSKEY xtesting
ENV SECRETKEY xtesting
ENV BUCKET xtesting

RUN apk --no-cache add --virtual .build-deps --update git && \
    go get github.com/harshavardhana/s3www && \
    rm -rf /go/src && \
    apk del .build-deps
CMD s3www -endpoint $ENDPOINT -accessKey $ACCESSKEY -secretKey $SECRETKEY -bucket $BUCKET -address 0.0.0.0:8080
EXPOSE 8080
