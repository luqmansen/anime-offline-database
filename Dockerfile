FROM mongo:3.6.18-xenial

LABEL maintainer="Luqman Setyo N <luqmansen@gmail.com>"

WORKDIR /docker-entrypoint-initdb.d
COPY anime-offline-database.json import.js ./
RUN jq .data anime-offline-database.json > parsed.json \
    && cat parsed.json >> import.js \
    && echo ")" >> import.js