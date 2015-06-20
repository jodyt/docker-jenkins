FROM ubuntu:14.04

RUN apt-get update
RUN apt-get install -y wget \
 openjdk-7-jre-headless

RUN wget -q -O - http://pkg.jenkins-ci.org/debian-stable/jenkins-ci.org.key | sudo apt-key add -
RUN echo "deb http://pkg.jenkins-ci.org/debian-stable binary/" >> /etc/apt/sources.list

RUN apt-get update
RUN apt-get install -y jenkins
