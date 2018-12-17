FROM alpine:latest

MAINTAINER Anderson Calixto <andersonbr@gmail.com>

RUN apk --update add bind

EXPOSE 53

CMD ["named", "-c", "/etc/bind/named.conf", "-g", "-u", "named"]
