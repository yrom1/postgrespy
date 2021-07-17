# docker run -e POSTGRES_HOST_AUTH_METHOD=trust postgrespy
# (for playing around with)
#Error: Database is uninitialized and superuser password is not specified.
#       You must specify POSTGRES_PASSWORD to a non-empty value for the
#       superuser. For example, "-e POSTGRES_PASSWORD=password" on "docker run".
#
#       You may also use "POSTGRES_HOST_AUTH_METHOD=trust" to allow all
#       connections without a password. This is *not* recommended.
#
#       See PostgreSQL documentation about "trust":
#       https://www.postgresql.org/docs/current/auth-trust.html

FROM postgres:12.7

RUN apt-get update
RUN apt-get -y install python3 postgresql-plpython3-12
COPY init.sql /docker-entrypoint-initdb.d
