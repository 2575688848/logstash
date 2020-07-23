
#!/bin/bash

nohup /home/work/elk/logstash-7.5.0/bin/logstash -f /home/work/elk/logstash/conf/fex/fex_node_jarvis.conf --path.data=/home/work/elk/logstash-7.5.0/project-data/fex_node_jarvis_data/  >/home/work/elk/logstash/logs/fex_node_jarvis.log 2>&1 &
