#!/bin/bash
# Ansible managed: /workspace/users/albandri10/env/ansible/roles/jboss/templates/build.sh.j2 modified on 2014-10-16 01:06:01 by albandri on albandri-laptop-misys

DOCKERNAME="nabla/ansible-jboss"

time docker build -t $DOCKERNAME .

echo
echo "This image is a trusted docker.io Image."
echo
echo "To pull it"
echo "    docker pull $DOCKERNAME"
echo
echo "To use this docker:"
echo "    docker run -d -P $DOCKERNAME"
echo " - to attach your container directly to the host's network interfaces"
echo "    docker run --net host -d -P $DOCKERNAME"
echo
echo "To run in interactive mode for debug:"
echo "    docker run -t -i $DOCKERNAME bash"
echo
