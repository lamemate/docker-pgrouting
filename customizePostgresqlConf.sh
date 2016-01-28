#!bin/bash

# comment actual shared_buffers value
sed -i -e 's/shared_buffers/#shared_buffers/g' /var/lib/postgresql/data/postgresql.conf

# Insert new configuration
cat >> /var/lib/postgresql/data/postgresql.conf <<'EOF'

default_statistics_target = 50
maintenance_work_mem = 200MB
checkpoint_completion_target = 0.9
work_mem = 32MB
checkpoint_segments = 30

# SH: Tuning nach http://wiki.postgresql.org/wiki/Tuning_Your_PostgreSQL_Server
effective_cache_size = 2GB # SH: abgerundet => 1/2 des Speichers (4 GB) / Anzahl der maximalen PostgreSQL-Instanzen (1)
shared_buffers = 1GB # SH: abgerundet => 1/4 des Speichers (4 GB) / Anzahl der maximalen PostgreSQL-Instanzen (1)
wal_buffers = 16MB # SH: 1/32 shared buffers und maximal 16 MB
constraint_exclusion = partition # SH
EOF
