#!/bin/bash
INIT_SCRIPT="/configs/init.sh"
if [ -f $INIT_SCRIPT ]; then
    if [ ! -x $INIT_SCRIPT ]; then
        chmod + x $INIT_SCRIPT
    fi
    sh $INIT_SCRIPT
fi

uwsgi --ini /configs/uwsgi.ini