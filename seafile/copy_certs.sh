#!/bin/bash

APP_DIR=/var/export/kube/seafile/app
SSL_CRT=seafile.ovoxcloud.com.crt
SSL_KEY=seafile.ovoxcloud.com.key

# create dir if doesn't exist
if [ ! -d ${APP_DIR}/ssl ];
then
mkdir -p /var/export/kube/seafile/app/ssl
fi

# copy crt if doesn't exist
if [ ! -f ${APP_DIR}/ssl/${SSL_CRT} ];
then
cp ${PWD}/ssl/${SSL_CRT} ${APP_DIR}/ssl/${SSL_CRT}
fi

# copy key if doesn't exist
if [ ! -f ${APP_DIR}/ssl/${SSL_KEY} ];
cp ${PWD}/ssl/${SSL_KEY} ${APP_DIR}/ssl/${SSL_KEY}
fi
