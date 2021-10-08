#!/bin/env bash

if [[ -z "$OCI_CONFIG_DIR" ]]; then
    # Set config directory where shell script belongs
    current=`pwd`
    cd $(dirname $0)
    OCI_CONFIG_DIR=`pwd`/oci
    mkdir -p $OCI_CONFIG_DIR
    cd $current
    printf "OCI_CONFIG_DIR is unset\n Use $OCI_CONFIG_DIR instead.\n"
fi

docker run -it \
       -v $OCI_CONFIG_DIR:/root/.oci \
       -e OCI_CONFIG=/root/.oci/config \
       -p 127.0.0.1:8181:8181 \
       nnaka2992/oci_cli:latest $@

echo
