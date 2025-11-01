
docker build -t tftpboot .

docker run -it --net=host --cap-add=NET_ADMIN --rm tftpboot /bin/sh
