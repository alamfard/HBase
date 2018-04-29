#!/bin/bash

mkdir /opt/hbase/logs
/opt/hbase/bin/start-hbase.sh

if [ -t 0 ]; then
  /opt/hbase/bin/hbase shell
else
  tail -f /opt/hbase/logs/*
fi
