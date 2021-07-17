# postgresql-plpython3

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
