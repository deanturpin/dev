Install Docker with your package manager of choice, fire up [Play With
Docker](https://labs.play-with-docker.com) or an AWS instance and run the
dev container.

```bash
sudo apt update --yes
sudo apt install --yes docker.io
sudo docker run --net host --rm -it --env DISPLAY=$DISPLAY deanturpin/dev
```
