FROM postgres:10
MAINTAINER sushantdhiman "sushantdhiman@outlook.com"

ENV POSTGIS_MAJOR 2.4
ENV POSTGIS_VERSION 2.4.4+dfsg-4.pgdg90+1

RUN apt-get update \
      && apt-cache showpkg postgresql-$PG_MAJOR-postgis-$POSTGIS_MAJOR \
      && apt-get install -y --no-install-recommends \
           postgresql-$PG_MAJOR-postgis-$POSTGIS_MAJOR=$POSTGIS_VERSION \
           postgresql-$PG_MAJOR-postgis-$POSTGIS_MAJOR-scripts=$POSTGIS_VERSION \
           postgis=$POSTGIS_VERSION \
      && rm -rf /var/lib/apt/lists/*


COPY ./init-sequelize-db.sh /docker-entrypoint-initdb.d/postgis.sh
COPY ./update-sequelize-db.sh /usr/local/bin/update-sequelize-db.sh