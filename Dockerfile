FROM alpine:3.15.0
LABEL org.opencontainers.image.authors="Terje Sannum <terje@offpiste.org>" \
      org.opencontainers.image.source="https://github.com/terjesannum/docker-ncat-logger"

RUN apk add --update nmap-ncat && rm -rf /var/cache/apk/*

ENV PORT 4000

CMD ["sh", "-c", "ncat -k -l $PORT"]
