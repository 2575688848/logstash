## Logstash 项目运行相关

### Logstash 目录

    bin          logstash 各配置文件对应的控制脚本
        back     后端方向控制脚本
        fex      前端方向控制脚本
        inf      基础服务方向控制脚本
        sre      基础运维方向控制脚本
        
    conf         logstash 的配置文件
        back     后端方向配置文件
        fex      前端方向配置文件
        inf      基础服务方向配置文件
        sre      基础运维方向配置文件
        
    logs         logstash 的日志文件
        日志文件
        
### Logstash 部署整理

    yz-saas-elk-es-01 logstash: 7 nginx 0
    
    
    	fex_hammer.conf
    	
    	inf_search_api_test.conf
    	
    	fex_qiniu-video.conf
    	
    	fex_api-proxy.conf
    
    	back_sms.conf
    	
    	back_php_slow
    	
    	back_php_error
    
    
    
    
    yz-saas-elk-es-02  logstash: 10 nginx 4
    
    
    	inf_search_api
    	
    	nginx_lannx_v
    	
    	nginx_lannx_fex_service
    
    	nginx_lannx_search
    	
    	nginx_error
    	
    	fex_gls-web
    	
    	fex_gls-api
    	
    	fex_jarvis
    	
    	back_imservice
    	
    	back_pandora
    
    
    
    
    yz-saas-elk-es-03  logstash: 10  nginx 1
     
    	
    	inf_tracking
    
    	inf_dataengine
    
    	back_pay
    
    	back_goods
    
    	back_order
    
    	back_coupon
    
    	back_account
    
    	fex_huaservice
    
    	fex_im-node
    
    	nginx_lannx_all_service
    
    	fex_node_jarvis
    
    
    
    yz-saas-elk-es-00  logstash: 11 nginx 5
    
    	back_store
    
    	back_prada
    
    	back_notify
    
    	back_dior
    
    	back_content
    
    	back_adx
    
    	nginx_wannx_www
    
    	nginx_wannx_m
    
    	nginx_wannx_glk
    
    	nginx_wannx_a
    
    	nginx_wannx_v



### 批量控制命令：

    ps -ef | grep logstash | grep -v grep | awk '{print $2}' | wc -l
    
    ps -ef | grep logstash | grep -v grep | awk '{print $2}' | xargs kill
    
    
### nginx access log 匹配正则：
    
    \[(?<remote_addr>[^\[\]]*)\] \[(?<remote_user>[^\[\]]*)\] \[(?<time_local>[^\[\]]*)\] \[(?<request>[^\[\]]*)\] \[(?<status>[^\[\]]*)\] \[(?<body_bytes_sent>[^\[\]]*)\] \[(?<http_referer>[^\[\]]*)\] \[(?<http_user_agent>[^\[\]]*)\] \[(?<http_x_forwarded_for>[^\[\]]*)\] \[(?<http_cookie>[^\[\]]*)\] \[(?<request_time>[^\[\]]*)\] \[(?<upstream_addr>[^\[\]]*)\] \[(?<upstream_response_time>[^\[\]]*)\] \[(?<empty>[^\[\]]*)\] \[(?<host>[^\[\]]*)\] \[(?<sent_http_set_cookie>[^\[\]]*)\]
        


### nginx error log 匹配正则：
    
    (?<timestamp>\d{4}/\d{2}/\d{2} \d{2}:\d{2}:\d{2}) \[%{LOGLEVEL:severity}\] %{POSINT:pid}#%{NUMBER}: %{GREEDYDATA:errormessage}(?:, client: (?<remote_addr>%{IP}|%{HOSTNAME}))(?:, server: %{IPORHOST:server}?)(?:, request: %{QS:request})(?:, upstream: (?<upstream>\"%{URI}\"|%{QS}))?(?:, host: %{QS:request_host})?(?:, referrer: \"%{URI:referrer}\")?