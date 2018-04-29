#!/bin/bash

/opt/hbase/bin/start-hbase.sh
tailf /opt/hbase/logs/hbase--master-localhost.log
