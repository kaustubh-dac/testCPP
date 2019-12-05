FROM ubuntu
MAINTAINER kaustubh

COPY . /home/test
WORKDIR /home/test
RUN ls -all
RUN apt-get update -y && apt-get install g++ -y
CMD g++ helloworld.cpp -o helloworld
RUN ls -all
CMD ./home/test/helloworld