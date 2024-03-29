FROM alpine:latest

RUN apk add --no-cache rsync openssh \
    && mkdir -p ~/.ssh \
    && echo -e "Host *\n\tStrictHostKeyChecking no\n\n" > ~/.ssh/config \
    && touch ~/.ssh/id_rsa \
    && chmod 600 ~/.ssh/id_rsa
