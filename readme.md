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

Minimal interactive.
```bash
sudo docker run --rm -it --env DISPLAY=$DISPLAY deanturpin/dev
```

Expecting to display a UI on the host.
```bash
sudo docker run --net host --rm -it --env DISPLAY=$DISPLAY deanturpin/dev
```
