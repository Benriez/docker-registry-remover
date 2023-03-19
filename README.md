paste this script inside /captain/data/registry/docker/registry/v2/blobs/sha256/
<!-- delete unused manifest tags  -->
cd /captain/data/registry/docker/registry/v2/repositories/captain/

<!-- exec garbage collector -->
docker exec -it $(docker ps --filter name=captain-registry -q) /bin/sh
registry garbage-collect --dry-run --delete-untagged /etc/docker/registry/config.yml

copy & paste the eligible blobs for deletion from the output into blobs.txt
chmod +x ./docker-remover.sh 

execute the docker-remover script
./docker-remvover.sh


<!-- registry blobs path  -->
cd /captain/data/registry/docker/registry/v2/blobs/sha256
