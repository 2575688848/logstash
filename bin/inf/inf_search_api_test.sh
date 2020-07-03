
#!/bin/bash

nohup /home/work/elk/logstash-7.5.0/bin/logstash -f /home/work/elk/logstash/conf/inf/inf_search_api_test.conf --path.data=/home/work/elk/logstash-7.5.0/project-data/inf_search_api_test_data/  >/dev/null 2>&1 &
