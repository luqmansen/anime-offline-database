# hanako-mongodb

[![Update Automation](https://github.com/luqmansen/hanako-mongodb/workflows/Update%20Automation/badge.svg)](https://github.com/luqmansen/hanako-mongodb/actions)
[![Docker Pulls](https://img.shields.io/docker/pulls/luqmansen/hanako-mongodb)](https://hub.docker.com/r/luqmansen/hanako-mongodb)
[![Layers](https://img.shields.io/microbadger/layers/luqmansen/hanako-mongodb)](https://hub.docker.com/r/luqmansen/hanako-mongodb)
[![Size](https://img.shields.io/docker/image-size/luqmansen/hanako-mongodb)](https://hub.docker.com/r/luqmansen/hanako-mongodb)

Docker image version of  [manami-project/anime-offline-database](https://github.com/manami-project/anime-offline-database). Pre-seeded inside mongodb image, ready to use.


CI Scheduled to update every 5 minutes even though the upstream updated
 every week because why not, its free anyway ¯\_(ツ)_/¯

## Run 
```
docker run -p 27017:27017 \
    -e MONGO_INITDB_ROOT_USERNAME=root \
    -e MONGO_INITDB_ROOT_PASSWORD=root \
    luqmansen/hanako-mongodb
```

## License
 [GNU](./LICENSE)