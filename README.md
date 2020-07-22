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

         yz-saas-elk-es-01 logstash: 5
         
         	fex_hammer.conf
         	
         	inf_search_api_test.conf
         	
         	fex_qiniu-video.conf
         	
         	fex_api-proxy.conf
         
         	back_sms.conf
         

         yz-saas-elk-es-02  logstash: 12
         
         	inf_search_api.conf
         	
         	nginx_lannx_account.conf
         	
         	nginx_lannx_v.conf
         	
         	nginx_lannx_upload_store_higoNotify_sms.conf
         	
         	fex_gls-web.conf
         	
         	fex_gls-api.conf
         	
         	nginx_lannx_sh_erp_backendkf_apimsg.conf
         	
         	nginx_lannx_coupon_order_im_search.conf
         	
         	nginx_lannx_higoContent_higoAccount_higoGoods.conf
         	
         	nginx_lannx_content_push_comment_biz.conf
         	
         	fex_jarvis.conf
         	
         	back_imservice.conf
         

         yz-saas-elk-es-03  logstash: 10
          
         	inf_tracking.conf
         
         	inf_dataengine.conf
         
         	back_pay.conf
         
         	back_goods.con
         
         	back_order.conf
         
         	back_coupon.conf
         
         	back_account.conf
         
         	fex_huaservice.conf
         
         	fex_im-node.conf
         
         	nginx_lannx_all_service.conf
         

         yz-saas-elk-es-00  logstash: 11
         
         	back_store.conf
         
         	back_prada.conf
         
         	back_notify.conf
         
         	back_dior.conf
         
         	back_content.conf
         
         	back_adx.conf
         
         	nginx_wannx_www.conf
         
         	nginx_wannx_m.conf
         
         	nginx_wannx_glk.conf
         
         	nginx_wannx_a.conf
         
         	nginx_wannx_v.conf


### 批量控制命令：

    ps -ef | grep logstash | grep -v grep | awk '{print $2}' | wc -l
    
    ps -ef | grep logstash | grep -v grep | awk '{print $2}' | xargs kill
    
    
### nginx access log 匹配正则：
    
    \[(?<remote_addr>[^\[\]]*)\] \[(?<remote_user>[^\[\]]*)\] \[(?<time_local>[^\[\]]*)\] \[(?<request>[^\[\]]*)\] \[(?<status>[^\[\]]*)\] \[(?<body_bytes_sent>[^\[\]]*)\] \[(?<http_referer>[^\[\]]*)\] \[(?<http_user_agent>[^\[\]]*)\] \[(?<http_x_forwarded_for>[^\[\]]*)\] \[(?<http_cookie>[^\[\]]*)\] \[(?<request_time>[^\[\]]*)\] \[(?<upstream_addr>[^\[\]]*)\] \[(?<upstream_response_time>[^\[\]]*)\] \[(?<empty>[^\[\]]*)\] \[(?<host>[^\[\]]*)\] \[(?<sent_http_set_cookie>[^\[\]]*)\]
        


### nginx error log 匹配正则：
    
    (?<timestamp>\d{4}/\d{2}/\d{2} \d{2}:\d{2}:\d{2}) \[%{LOGLEVEL:severity}\] %{POSINT:pid}#%{NUMBER}: %{GREEDYDATA:errormessage}(?:, client: (?<remote_addr>%{IP}|%{HOSTNAME}))(?:, server: %{IPORHOST:server}?)(?:, request: %{QS:request})(?:, upstream: (?<upstream>\"%{URI}\"|%{QS}))?(?:, host: %{QS:request_host})?(?:, referrer: \"%{URI:referrer}\")?