FROM postgres:10
MAINTAINER sushantdhiman "sushantdhiman@outlook.com"

RUN apt-get update \
  && apt-get install --no-install-recommends -y postgresql-10-postgis-2.4 \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

COPY 00-extensions.sql /docker-entrypoint-initdb.d/