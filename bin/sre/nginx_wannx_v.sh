
#!/bin/bash

nohup /home/work/elk/logstash-7.5.0/bin/logstash -f /home/work/elk/logstash/conf/back/nginx_wannx_v.conf --path.data=/home/work/elk/logstash-7.5.0/project-data/nginx_wannx_v_data/  >/dev/null 2>&1 &
