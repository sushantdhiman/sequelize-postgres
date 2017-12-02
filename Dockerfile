FROM postgres:9.5
MAINTAINER sushantdhiman "sushantdhiman@outlook.com"

RUN apt-get update \
  && apt-get install --no-install-recommends -y postgresql-9.5-postgis-2.2 postgresql-9.5-postgis-2.2-scripts \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

COPY 00-extensions.sql /docker-entrypoint-initdb.d/