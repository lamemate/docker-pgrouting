# pgrouting container for Docker

**Create a docker vm with 4GB of RAM:**

`docker-machine create --driver virtualbox --virtualbox-cpu-count 2 --virtualbox-memory 4096 default`

**Get the environment:**

`eval $(docker-machine env default)`

**Build the Docker image:**

`docker build -t some/name`

**Run the Docker image:**

`docker run --name container -e POSTGRES_PASSWORD=secret -p 5432:5432 some/name`

This creates a postgis and pgrouting enabled database named `postgres`. The standard database user is `postgres`.