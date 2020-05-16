FROM mongo:3.6.18-xenial

LABEL maintainer="Luqman Setyo N <luqmansen@gmail.com>"

WORKDIR /docker-entrypoint-initdb.d
COPY anime-offline-database.json ./
RUN echo "db = db.getSiblingDB('anime');" >> import.js \
    && echo "db.anime.insertMany(" >> import.js \
    && jq .data anime-offline-database.json >> import.js \
    && echo ")" >> import.js \
    && rm anime-offline-database.json