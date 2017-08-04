FROM ubuntu:14.04
MAINTAINER Aleen Barcos "barcoak1@student.op.ac.nz"

RUN apt-get -q update && apt-get -yq dist-upgrade
RUN apt-get -yq install apache2; apt-get -yq install openssh-server; apt-get -yq install supervisor


SUDO cp supervisord.conf > /etc/supervisor/conf.d/supervisord.conf
EXPOSE 22
EXPOSE 80

RUN usr/bin/supervisord
