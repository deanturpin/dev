FROM gcc
RUN apt update --yes
RUN apt install --yes make
COPY . src
WORKDIR src
RUN make
RUN mkdir /developer
COPY git.mak /developer
WORKDIR /developer
