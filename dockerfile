FROM ubuntu
MAINTAINER kaustubh

COPY . /home/test
WORKDIR /home/test
RUN apt-get update -y && apt-get install g++ -y
CMD g++ helloworld.cpp -o helloworld
CMD ./home/test/helloworld