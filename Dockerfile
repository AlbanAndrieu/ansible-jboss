# Ansible managed: /workspace/users/albandri10/env/ansible/roles/jboss/templates/Dockerfile.j2 modified on 2014-10-16 02:20:58 by albandri on albandri-laptop-misys
#FROM        debian:jessie
#FROM        stackbrew/ubuntu:14.04
FROM        jasongiedymin/ansible-base-ubuntu

# Volume can be accessed outside of container
VOLUME      [/var/log/jboss-as]

MAINTAINER  Alban Andrieu "https://github.com/AlbanAndrieu"

ENV			DEBIAN_FRONTEND noninteractive
ENV         JBOSS_HOME /usr/share/jboss-as/jboss-as-7.1.1
ENV         WORKDIR /home/vagrant

# Working dir
WORKDIR /home/vagrant

# COPY
#COPY

RUN         pwd
RUN         ls -lrta

# ADD
ADD defaults $WORKDIR/ansible-jboss/defaults
ADD meta $WORKDIR/ansible-jboss/meta
ADD files $WORKDIR/ansible-jboss/files
ADD handlers $WORKDIR/ansible-jboss/handlers
ADD tasks $WORKDIR/ansible-jboss/tasks
ADD templates $WORKDIR/ansible-jboss/templates
#ADD vars $WORKDIR/ansible-jboss/vars

# Here we continue to use add because
# there are a limited number of RUNs
# allowed.
ADD hosts /etc/ansible/hosts
ADD jboss.yml $WORKDIR/ansible-jboss/jboss.yml

# Execute
RUN         pwd
RUN         ls -lrta
RUN         ansible-playbook $WORKDIR/ansible-jboss/jboss.yml -c local -vvvv

#RUN         apt-get update && \
#            apt-get install -y openssh-server openjdk-7-jre-headless
#RUN         useradd -m -s /bin/bash jenkins
#RUN         echo jenkins:jenkins | chpasswd
#RUN         mkdir -p /var/run/sshd
            
EXPOSE 21:9999
ENTRYPOINT  ["/etc/init.d/jboss", "start"]
CMD ["-g", "deamon off;"]
