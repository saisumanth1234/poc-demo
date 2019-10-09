FROM ubuntu:latest

MAINTAINER sai <saisumanth1234@gmail.com>

WORKDIR /usr/demo/hello-docker/

RUN apt-get -y update

RUN apt-get install -y nodejs

RUN apt-get install -y npm

RUN npm install -g http-server

ADD . /usr/demo/hello-docker/

ADD index.html /usr/demo/hello-docker/index.html

CMD ["http-server", "-s"]
