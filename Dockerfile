FROM ubuntu
RUN apt update -y
RUN apt install -y make chromium-browser
COPY . src
WORKDIR src
RUN make
RUN mkdir /developer
WORKDIR /developer
RUN echo 'git clone https://github.com/deanturpin/sec' > init.sh && chmod +x init.sh
