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
        
### Logstash 部署整理

         yz-saas-elk-es-01 logstash:        
  
         	fex_hammer.conf
         	
         	inf_search_api_test.conf
         	
         	fex_qiniu-video.conf
         	
         	fex_api-proxy.conf
         
         	back_sms.conf
         
         
         
         
         yz-saas-elk-es-02  logstash:
         
         	inf_search_api.conf
         	
         	nginx_lannx_account.conf
         	
         	nginx_lannx_v.conf
         	
         	nginx_lannx_upload_store_higoNotify.conf
         	
         	fex_gls-web.conf
         	
         	fex_gls-api.conf
         	
         	nginx_lannx_sh_erp_backendkf_apimsg.conf
         	
         	nginx_lannx_coupon_order_im_search.conf
         	
         	nginx_lannx_higoContent_higoAccount_higoGoods.conf
         	
         	nginx_lannx_content_push_comment_biz.conf
         	
         	fex_jarvis.conf
         	
         	back_imservice.conf
         
         
         
         
         yz-saas-elk-es-03  logstash:
         
         	inf_tracking.conf
         
         	inf_dataengine.conf
         
         	back_pay.conf
         
         	back_goods.conf
         
         	back_order.conf
         
         	back_coupon.conf
         
         	back_account.conf
         
         	fex_huaservice.conf
         
         	fex_im-node.conf
         	
         
         yz-saas-elk-es-00  logstash:
         
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