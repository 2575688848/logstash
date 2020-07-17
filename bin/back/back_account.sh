#!/bin/bash

nohup /home/work/elk/logstash-7.5.0/bin/logstash -f /home/work/elk/logstash/conf/back/back_account.conf --path.data=/home/work/elk/logstash-7.5.0/project-data/back_account_data/  >/home/work/elk/logstash/logs/back_account.log 2>&1 &
