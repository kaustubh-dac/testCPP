FROM ubuntu
MAINTAINER kaustubh

COPY . /home/test
WORKDIR /home/test
RUN ls -all
RUN apt-get update -y && apt-get install g++ -y
RUN g++ helloworld.cpp
RUN ls -all
CMD ./a.out