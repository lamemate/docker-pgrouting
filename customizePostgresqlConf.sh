#!bin/bash

# Increase shared_buffers
echo 'shared_buffers = 1024MB' >> /var/lib/postgresql/data/postgresql.conf

# Increase work_mem
echo 'work_mem = 32MB' >> /var/lib/postgresql/data/postgresql.conf

# Increase maintenance_work_mem
echo 'maintenance_work_mem = 200MB' >> /var/lib/postgresql/data/postgresql.conf

# Increase wal_buffers
echo 'wal_buffers = 1MB' >> /var/lib/postgresql/data/postgresql.conf

# Increase checkpoint_segments
echo 'checkpoint_segments = 30' >> /var/lib/postgresql/data/postgresql.conf

# Increase checkpoint_completion_target
echo 'checkpoint_completion_target = 0.9' >> /var/lib/postgresql/data/postgresql.conf

# Increase checkpoint_timeout
echo 'checkpoint_timeout = 15min' >> /var/lib/postgresql/data/postgresql.conf
