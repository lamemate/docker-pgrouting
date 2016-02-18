#!/bin/bash
psql --username postgres --dbname "$POSTGRES_DB" <<-ESQL
    -- Enable PostGIS (includes raster)
    CREATE EXTENSION postgis;
    -- Enable Topology
    CREATE EXTENSION postgis_topology;
    -- Enable pgrouting
    CREATE EXTENSION pgrouting;
ESQL
echo
