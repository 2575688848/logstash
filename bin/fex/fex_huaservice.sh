
#!/bin/bash

nohup /home/work/elk/logstash-7.5.0/bin/logstash -f /home/work/elk/logstash/conf/back/fex_api-proxy.conf --path.data=/home/work/elk/logstash-7.5.0/project-data/fex_api-proxy_data/  >/dev/null 2>&1 &
