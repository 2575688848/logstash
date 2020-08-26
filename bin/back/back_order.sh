#!/bin/bash

nohup /home/work/elk/logstash-7.5.0/bin/logstash -f /home/work/elk/logstash/conf/back/back_order.conf --path.data=/home/work/elk/logstash-7.5.0/project-data/back_order_data/  >/home/work/elk/logstash/logs/back_order.log 2>&1 &
