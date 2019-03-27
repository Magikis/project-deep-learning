#!/usr/bin/env bash
source config.sh

nvidia-docker run  --name ${USER_NAME}_${FRAMEWORK}_gpu \
	--volume=/home/${USER_NAME}/workspace_docker:/home/${USER_NAME}/workspace_docker -it -d -p ${SSH_PORT}:4444 \
	-p ${JUPYTER_PORT}:8888 \
	--volume=/home/${USER_NAME}/data/datasets:/home/${USER_NAME}/data/datasets \
	${USER_NAME}_${FRAMEWORK}
