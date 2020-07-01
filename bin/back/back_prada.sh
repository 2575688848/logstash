#!/bin/bash

nohup /home/work/elk/logstash-7.5.0/bin/logstash -f /home/work/elk/logstash/conf/back/back_prada.conf --path.data=/home/work/elk/logstash-7.5.0/project-data/back_prada_data/  >/dev/null 2>&1 &
