#!/usr/bin/env bash
source config.sh
docker stop ${USER_NAME}_${FRAMEWORK}_gpu
docker rm ${USER_NAME}_${FRAMEWORK}_gpu
