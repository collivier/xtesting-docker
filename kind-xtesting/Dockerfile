FROM opnfv/xtesting:wallaby

RUN apk add --update curl docker grep && \
  curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.11.1/kind-linux-amd64 && \
  chmod +x ./kind && mv ./kind /usr/bin/kind
COPY testcases.yaml /usr/lib/python3.8/site-packages/xtesting/ci/testcases.yaml
CMD ["run_tests", "-t", "all"]
