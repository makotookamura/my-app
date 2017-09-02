#!/bin/sh

mongod --dbpath /data/db --fork --logpath /data/log/log
cd /DevHub

#if [ -n "${DEVHUB_USER}" -a -n "${DEVHUB_PASSWORD}" ] ; then
    BASIC_AUTH_USER="${DEVHUB_USER}" BASIC_AUTH_PASS="${DEVHUB_PASSWORD}" node app.js -p 3000 -d "${DEVHUB_DB}" -t "${DEVHUB_TITLE}"
#else
#    node app.js -p 3000 -d "${DEVHUB_DB}" -t "${DEVHUB_TITLE}"
#fi
tail -f /dev/null