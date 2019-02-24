FROM ubuntu
RUN apt update --yes
RUN apt install --yes make
RUN apt install --yes chromium-browser
RUN apt install --yes docker.io
RUN apt install --yes g++-8
RUN apt install --yes time
COPY . src
WORKDIR src
RUN make
RUN mkdir /developer
WORKDIR /developer
