FROM python:3.9-alpine

RUN apk update &&\
    apk add gcc musl-dev libffi-dev openssh openssl-dev sshpass &&\
    pip install pip --upgrade &&\
    pip install ansible==2.10.6 &&\
    apk del gcc &&\
    rm -rf /var/cache/apk/*
