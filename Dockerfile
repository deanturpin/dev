FROM ubuntu
RUN apt update --yes
RUN apt install --yes make
RUN apt install --yes docker.io
RUN apt install --yes g++-8
RUN apt install --yes time
RUN apt install --yes vim
RUN apt install --yes git
RUN apt install --yes iproute2
RUN apt install --yes chromium-browser
RUN apt install --yes iputils-ping
RUN apt install --yes iputils-tracepath

# Copy all source to container
COPY . src
WORKDIR src
COPY bin/* /usr/bin/
RUN make
RUN mkdir /developer
COPY src/makefile /developer/makefile
WORKDIR /developer
