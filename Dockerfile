FROM ubuntu
RUN apt update -y
RUN apt install -y make chromium-browser
COPY . src
WORKDIR src
RUN make
