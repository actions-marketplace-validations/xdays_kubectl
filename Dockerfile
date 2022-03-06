FROM alpine:3.12

RUN apk add --no-cache curl aws-cli && \
    curl -sLo - https://dl.k8s.io/v1.20.11/kubernetes-client-linux-amd64.tar.gz | tar xz && \
    mv kubernetes/client/bin/kubectl /usr/bin/ && \
    curl -O https://amazon-eks.s3.us-west-2.amazonaws.com/1.21.2/2021-07-05/bin/linux/amd64/aws-iam-authenticator && \
    chmod 755 aws-iam-authenticator && \
    mv aws-iam-authenticator /usr/bin/

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
