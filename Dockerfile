FROM ubuntu:trusty

MAINTAINER John <yinzhuan@cisco.com>

RUN apt-get -y update  &&  apt-get  -y install  software-properties-common python-software-properties
RUN apt-add-repository ppa:mosquitto-dev/mosquitto-ppa && apt-get -y update
RUN apt-get -y install mosquitto 



ADD files /etc/mosquitto/

EXPOSE 1883 8883 9001 9883

ADD docker_entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
