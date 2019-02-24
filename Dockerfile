FROM ubuntu
RUN apt update --yes
RUN apt install --yes make chromium-browser docker.io
COPY . src
WORKDIR src
RUN make
RUN mkdir /developer
WORKDIR /developer
