# postgresql-plpython3u-docker

Docker image for PostgreSQL 12.7 with plpython3u support.

The image is currently on dockerhub:
https://hub.docker.com/repository/docker/yrom1/postgres12.7-plpython3.7.3

Pull image, or build image with Dockerfile:

```
docker build -t yrom1/postgres12.7-plpython3.7.3 .
docker pull yrom1/postgres12.7-plpython3.7.3
```

Then run it. For local testing `trust` mode environment variable can be used:

```
docker run -de POSTGRES_HOST_AUTH_METHOD=trust --name postgrespy yrom1/postgres12.7-plpython3.7.3
docker exec -it postgrespy bash
```

Once in bash, one can test the `CREATE EXTENSION plpython3u;` has worked with the example PL/Python3u example function in `py3_func_test.sql`:

```
root@1dbff12ed72e:/# su - postgres
postgres@1dbff12ed72e:~$ psql
psql (12.7 (Debian 12.7-1.pgdg100+1), server 12.8 (Debian 12.8-1.pgdg100+1))
Type "help" for help.

postgres=# CREATE FUNCTION pymax (a integer, b integer)
postgres-#   RETURNS integer
postgres-# AS $$
postgres$#   if a > b:
postgres$#     return a
postgres$#   return b
postgres$# $$ LANGUAGE plpython3u;
CREATE FUNCTION
postgres=# SELECT pymax(1, 2);
 pymax 
-------
     2
(1 row)

postgres=# 
```
