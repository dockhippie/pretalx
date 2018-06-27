FROM webhippie/python:3

LABEL maintainer="Thomas Boerger <thomas@webhippie.de>" \
  org.label-schema.name="Pretalx" \
  org.label-schema.vendor="Thomas Boerger" \
  org.label-schema.schema-version="1.0"

VOLUME ["/var/lib/pretalx"]

ENTRYPOINT ["/usr/bin/entrypoint"]
CMD ["/usr/bin/server"]
EXPOSE 3000
WORKDIR /var/lib/pretalx

RUN apk update && \
  apk upgrade && \
  mkdir -p \
    /var/lib/pretalx && \
  groupadd \
    -g 1000 \
    pretalx && \
  useradd \
    -u 1000 \
    -d /var/lib/pretalx \
    -g pretalx \
    -s /bin/bash \
    -M \
    pretalx && \
  apk add \
    libxml2-dev \
    libxslt-dev \
    libressl-dev \
    jpeg-dev \
    mariadb-dev \
    postgresql-dev \
    sqlite-dev \
    gettext && \
  pip3 install -U \
    pip \
    setuptools \
    wheel \
    redis \
    gunicorn \
    django_redis \
    dj_static \
    psycopg2-binary \
    mysqlclient \
    pretalx==0.7.1 && \
  rm -rf \
    /var/cache/apk/*

ADD rootfs /
