# postgresql-plpython3u-docker

Docker image for PostgreSQL 12.7 with plpython3u support

First time getting a non-trival docker running:

```
docker build -t postgrespy12 .
docker run -de POSTGRES_HOST_AUTH_METHOD=trust postgrespy12
docker exec -it fd154d4bd47b bash
```

a couple things I noticed:

- if you don't give the image a tag, it has `<none>` when you `docker images`
- `-d` is almost always nice, unless you just wanna run a docker container once
- since I'm just messing around, I use the no password `...AUTH_METHOD...`
- also, this didn't work for postgres 13... the python package is for 12 and I don't think there's a 13 one although i could be wrong
