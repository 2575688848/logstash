
#!/bin/bash

nohup /home/work/elk/logstash-7.5.0/bin/logstash -f /home/work/elk/logstash/conf/fex/fex_hammer.conf --path.data=/home/work/elk/logstash-7.5.0/project-data/fex_hammer_data/  >/dev/null 2>&1 &
