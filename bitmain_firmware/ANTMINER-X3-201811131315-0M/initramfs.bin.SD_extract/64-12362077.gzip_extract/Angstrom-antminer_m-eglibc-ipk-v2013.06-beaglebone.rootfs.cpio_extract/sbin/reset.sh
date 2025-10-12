#!/bin/sh

sleep 90s
/etc/init.d/cgminer.sh restart
echo "reset" > /tmp/reset

