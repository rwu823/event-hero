FROM mongo
MAINTAINER Rocky Wu <rocky@17.media>


COPY INSERT_USERS.js /data

RUN mkdir -p /data/db2 && \
    mongod --fork --logpath /var/log/mongodb.log --dbpath /data/db2 --smallfiles && \
    mongo 127.0.0.1:27017/17media /data/INSERT_USERS.js && \
    mongod --dbpath /data/db2 --shutdown && \
    chown -R mongodb /data/db2

CMD ["mongod", "--dbpath", "/data/db2", "--smallfiles"]

EXPOSE 27017
