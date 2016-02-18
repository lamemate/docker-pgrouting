FROM starefossen/pgrouting:9.4-2.1-2.1

ADD docker-entrypoint-initdb.d/* /docker-entrypoint-initdb.d/
