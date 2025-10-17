docker build -f ./docker-pxe/Dockerfile -t btardio-docker-pxe ./docker-pxe
docker run -it --net=host --rm btardio-docker-pxe
