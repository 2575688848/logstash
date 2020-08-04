#!/bin/bash

nohup /home/work/elk/logstash-7.5.0/bin/logstash -f /home/work/elk/logstash/conf/back/back_php_error.conf --path.data=/home/work/elk/logstash-7.5.0/project-data/back_php_error_data/  >/home/work/elk/logstash/logs/back_php_error.log 2>&1 &
