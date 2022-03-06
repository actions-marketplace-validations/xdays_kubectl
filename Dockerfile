FROM python:alpine

RUN apk add --no-cache groff curl && \
    curl -sLo - https://dl.k8s.io/v1.20.11/kubernetes-client-linux-amd64.tar.gz | tar xz && \
    mv kubernetes/client/bin/kubectl /usr/bin/ && \
    pip install awscli

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
