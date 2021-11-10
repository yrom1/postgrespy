FROM postgres:12.7

RUN apt-get update
RUN apt-get -y install python3 postgresql-plpython3-12
COPY init.sql /docker-entrypoint-initdb.d
