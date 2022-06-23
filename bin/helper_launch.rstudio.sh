#!/bin/bash

# Roman Reggiardo <rreggiar@ucsc.edu>
# 2022_07_23
# see https://github.com/rreggiar/bioconductor_docker
# ssh: git@github.com:rreggiar/bioconductor_docker.git

echo "${USER}"
USER_ID=$(id -u)
echo "UID: "${USER_ID}" "
PORT=$1
echo "mapped port: "${PORT}" "
PROJ=$2
echo "for project: "${PROJ}" "

# user & project specific mounts
DATA="/public/groups/kimlab/"${PROJ}"/data:/home/"${USER}"/data"
NOTEBOOKS="/public/groups/kimlab/"${PROJ}"/notebooks:/home/"${USER}"/notebooks"
BIN="/public/groups/kimlab/"${PROJ}"/bin:/home/"${USER}"/bin"
R="/public/groups/kimlab/"${PROJ}"/R:/home/"${USER}"/R"
# rreggiar config file for RSTUDIO looks and behavior
CONFIG="/public/home/"${USER}"/.rstudio_docker_config:/home/"${USER}"/.config/rstudio"

echo "making rstudio session hosted at 127.0.0.1:"${PORT}":8787 for "${USER}":"${USER_ID}""
docker run --rm -p 127.0.0.1:"${PORT}":8787 -e DISABLE_AUTH=true \
	-e USER="${USER}" \
	-e USERID="${USER_ID}" \
	-e ROOT=TRUE \
	--detach \
	--name "${PROJ}" \
	-v "${DATA}" \
	-v "${NOTEBOOKS}" \
	-v "${BIN}" \
	-v "${R}" \
	-v "${CONFIG}" \
	kimlab_rstudio:latest
