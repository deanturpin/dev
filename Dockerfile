FROM gcc
RUN apt update --yes
RUN apt install --yes make
COPY . src
WORKDIR src
RUN make
RUN mkdir /developer
COPY git.mak /developer/makefile
COPY src/clone_me.sh /developer/
WORKDIR /developer
