IRIS In One Command
===

This repo lets you quickly start and use the following services:

1. iris-api
2. iris-relay
3. iris-frontend
4. iris-sender
5. mysql

Getting started
---

Spin up the cluster

    make

Start your web browser and go to: http://localhost:16650

Stop the stack..

    docker-compose stop

Start it again without recreating everything:

    docker-compose up --no-recreate

Poking around
---

See which containers are running:

    docker ps

Jump into a container:

     docker exec -i -t $ID  /bin/bash

Kill a container

    docker rm -f $ID
