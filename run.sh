docker kill neo4j
docker rm neo4j
docker run -d \
    --name neo4j \
    --publish=7474:7474 \
    --publish=7687:7687 \
    --volume=$(pwd):/scripts \
    --volume=$HOME/neo4j/logs:/logs \
    neo4j:3.0

docker exec -it neo4j sh /scripts/populate.sh
