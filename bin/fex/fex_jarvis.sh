
#!/bin/bash

nohup /home/work/elk/logstash-7.5.0/bin/logstash -f /home/work/elk/logstash/conf/fex/fex_jarvis.conf --path.data=/home/work/elk/logstash-7.5.0/project-data/fex_jarvis_data/  >/home/work/elk/logstash/logs/fex_jarvis.log 2>&1 &
