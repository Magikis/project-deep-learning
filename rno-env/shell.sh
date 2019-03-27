#!/usr/bin/env bash
source config.sh
nvidia-docker exec -it --user ${USER_NAME} ${USER_NAME}_${FRAMEWORK}_gpu bash
