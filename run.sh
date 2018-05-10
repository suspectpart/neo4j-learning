docker kill neo4j
docker rm neo4j
docker run -d \
    --name neo4j \
    --publish=7474:7474 \
    --publish=7687:7687 \
    --volume=$(pwd)/conf:/conf \
    --volume=$(pwd)/logs:/logs \
    --volume=$(pwd)/import:/var/lib/neo4j/import \
    neo4j:3.3.2
