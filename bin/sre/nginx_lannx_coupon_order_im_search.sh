
#!/bin/bash

nohup /home/work/elk/logstash-7.5.0/bin/logstash -f /home/work/elk/logstash/conf/sre/nginx_lannx_coupon_order_im_search.conf --path.data=/home/work/elk/logstash-7.5.0/project-data/nginx_lannx_coupon_order_im_search_data/  >/dev/null 2>&1 &
