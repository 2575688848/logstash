#!/bin/bash

nohup /home/work/elk/logstash-7.5.0/bin/logstash -f /home/work/elk/logstash/conf/back/back_goods.conf --path.data=/home/work/elk/logstash-7.5.0/project-data/back_goods_data/  >/home/work/elk/logstash/logs/back_goods.log 2>&1 &
