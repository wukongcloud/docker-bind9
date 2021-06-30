FROM alpine:3.13

RUN apk upgrade --no-cache

ARG ALPINE_VERSION=9.16.15-r1

RUN apk --update --no-cache add \
        bind=$ALPINE_VERSION \
        bind-dnssec-tools=$ALPINE_VERSION

VOLUME ["/etc/bind", "/var/cache/bind", "/var/lib/bind", "/var/log"]

RUN mkdir -p /etc/bind && chown root:named /etc/bind/ && chmod 755 /etc/bind && \
    mkdir -p /var/cache/bind && chown named:named /var/cache/bind && chmod 755 /var/cache/bind && \
    mkdir -p /var/lib/bind && chown named:named /var/lib/bind && chmod 755 /var/lib/bind && \
    mkdir -p /var/log/bind && chown named:named /var/log/bind && chmod 755 /var/log/bind && \
    mkdir -p /run/named && chown named:named /run/named && chmod 755 /run/named

WORKDIR /app

EXPOSE 53/udp 53/tcp 953/tcp

CMD ["named", "-c", "/etc/bind/named.conf", "-g", "-u", "named"]