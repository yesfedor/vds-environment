#!/usr/bin/env bash

git checkout undo --force
git checkout main --force

git pull

docker-compose down -v
rm -rf ./synapse-data/* ./postgres-data/*

mkdir -p ./synapse-data/{media_store,uploads,logs}
chmod -R 777 ./synapse-data  # Временное решение для root

docker-compose run --rm synapse generate

nano synapse-data/homeserver.yaml

# docker-compose up -d
