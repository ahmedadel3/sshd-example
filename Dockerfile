FROM ubuntu

MAINTAINER Ahmed Adel <ahmedhoyhy@gmail.com>
RUN apt-get update && apt-get install -y openssh-server 
RUN mkdir -p /var/run/sshd
ADD sshd_config /etc/ssh/sshd_config

RUN echo 'root:demo' | chpasswd
CMD /usr/sbin/sshd -D
EXPOSE 2222/tcp

