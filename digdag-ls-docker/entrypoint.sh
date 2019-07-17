#!/bin/bash

usermod -u ${UID:-25252} $EXECUTE_USER
groupmod -g ${GID:-25252} $EXECUTE_USER
#chown -R sunakan-dev $INDEX_DATA_PATH

exec /usr/sbin/gosu sunakan-dev "$@"
