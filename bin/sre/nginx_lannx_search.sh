
#!/bin/bash

nohup /home/work/elk/logstash-7.5.0/bin/logstash -f /home/work/elk/logstash/conf/sre/nginx_lannx_search.conf --path.data=/home/work/elk/logstash-7.5.0/project-data/nginx_lannx_search_data/  >/home/work/elk/logstash/logs/nginx_lannx_search.log 2>&1 &
