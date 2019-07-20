#!/bin/bash

CURRENT_USER=$(whoami)
EXEC_USER=${EXEC_USER:-suna-dev}

if [ $CURRENT_USER = root ] && [ $EXEC_USER != root ]; then
  groupadd -g ${EXEC_UID:-25252} $EXEC_USER
  useradd  -g $EXEC_USER -u ${EXEC_UID:-25252} $EXEC_USER
  chown -hR $EXEC_USER $WORKING_HOME
  if [ $IS_MASTER = true ]; then
    chown -hR $EXEC_USER $DATA_HOME
  fi
fi

exec /usr/sbin/gosu $EXEC_USER "$@"
