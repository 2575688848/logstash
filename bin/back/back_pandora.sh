#!/bin/bash

nohup /home/work/elk/logstash-7.5.0/bin/logstash -f /home/work/elk/logstash/conf/back/back_pandora.conf --path.data=/home/work/elk/logstash-7.5.0/project-data/back_pandora_data/  >/home/work/elk/logstash/logs/back_pandora.log 2>&1 &
