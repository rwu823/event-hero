FROM mysql:5.6
MAINTAINER Rocky Wu <rocky@17.media>

ENV MYSQL_ALLOW_EMPTY_PASSWORD yes
ENV MYSQL_DATABASE media17
ENV MYSQL_USER media17
ENV MYSQL_PASSWORD edf60f1e-c0e8-4f5f-a9cb-659b0f1a8ae5

ADD init_tables.sql /docker-entrypoint-initdb.d

EXPOSE 3306
