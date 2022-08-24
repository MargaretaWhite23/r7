# Container image that runs your code
#FROM debian:unstable
#FROM ubuntu:focal-20220531
FROM alpine:edge

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY build-kernel-github-actions.sh /build-kernel-github-actions.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/build-kernel-github-actions.sh"]
