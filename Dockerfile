FROM starefossen/pgrouting
MAINTAINER Henning Steinke <henning.steinke@fu-berlin.de>

ADD customizePostgresqlConf.sh /docker-entrypoint-initdb.d/customizePostgresqlConf.sh
RUN chmod 755 /docker-entrypoint-initdb.d/customizePostgresqlConf.sh
