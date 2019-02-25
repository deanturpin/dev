Install Docker with your package manager of choice, fire up [Play With
Docker](https://labs.play-with-docker.com) or an AWS instance and run the
dev container.

## apt
```bash
sudo apt update --yes
sudo apt install --yes docker.io
```

## snap
```bash
sudo snap install docker
```

## yum
```bash
sudo yum install docker.io
```

# And run the container
```bash
sudo docker run --net host --rm -it --env DISPLAY=$DISPLAY deanturpin/dev
```
