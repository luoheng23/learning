# images
docker images
docker rmi / docker image prune -f // 清理临时空间
docker tag
docker search

# create images or import
docker commit -m "image" -a "author" container_ID test:latest
docker import image.tar test:latest
docker load -i image.tar 

# export
docker export container -o test:latest // no history
docker save -o test:latest image:latest


# container
docker create -it ubuntu
docker start af
docker run -d ubuntu ...

docker logs af

# stop
docker stop container

# enter container
docker attach af
docker exec -it af /bin/bash


# data volumns
