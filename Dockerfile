FROM golang:1.14.4-alpine

COPY --from=mihaildemidoff/tdlib /usr/local/include/td /usr/local/include/td
COPY --from=mihaildemidoff/tdlib /usr/local/lib/libtd* /usr/local/lib/

RUN apk update && apk add --no-cache git gcc libc-dev g++ make openssl-dev && rm -rf /var/cache/apk/*
