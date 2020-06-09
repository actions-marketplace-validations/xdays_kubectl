FROM alpine:3.12

RUN apk add --no-cache curl aws-cli && \
    curl -sLo - https://dl.k8s.io/v1.16.10/kubernetes-client-linux-amd64.tar.gz | tar xz && \
    mv kubernetes/client/bin/kubectl /usr/bin/

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
