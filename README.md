# Lita Bot development image
Permits to easily set up a development environment for lita bots.

Features:
  * Redis server installed and service started when running a container
  * Colored prompt
  * vim and less installed for convenience

## Building image
```shell
docker build -t corentingi/lita-dev .
```

## Runing a new container
This command run the container attached to a bash prompt.
The workspace of the container can be linked to a folder on the host :
```shell
docker run -t -i --name lita-dev -v /lita-dev/workspace/:/lita corentingi/lita-dev
```

## Start the docker after it's been stopped
```shell
docker start -a -i lita-dev
```

