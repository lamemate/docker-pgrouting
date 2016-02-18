FROM starefossen/pgrouting

ADD docker-entrypoint-initdb.d/* /docker-entrypoint-initdb.d/
