FROM alpine

RUN apk --update add --no-cache libc6-compat ca-certificates bind-tools

WORKDIR /app

ADD https://aka.ms/downloadazcopy-v10-linux /tmp/azcopy.tar

RUN tar xvf /tmp/azcopy.tar --strip-components 1 && rm /tmp/azcopy.tar 

RUN /app/azcopy
