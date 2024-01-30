FROM ubuntu:22.04

WORKDIR /app

ADD https://aka.ms/downloadazcopy-v10-linux /tmp/azcopy.tar

RUN apt install -y ca-certificates && tar xvf /tmp/azcopy.tar --strip-components 1 && rm /tmp/azcopy.tar && /app/azcopy
