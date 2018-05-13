#!/bin/sh
echo "Stop running instances..."
docker kill neo4j > /dev/null 2>&1
docker rm neo4j > /dev/null 2>&1

echo "Start neo4j..."
docker run -d \
    --name neo4j \
    --publish=7474:7474 \
    --publish=7687:7687 \
    --volume=$(pwd)/conf:/conf \
    --volume=$(pwd)/plugins:/plugins \
    --volume=$(pwd)/logs:/logs \
    --volume=$(pwd)/import:/var/lib/neo4j/import \
    neo4j:3.3.2

echo "Wait a while to make sure it is started..."
sleep 5

echo "Prepopulate data..."
docker exec -i neo4j bin/cypher-shell < ./data.cql

echo "Done."
