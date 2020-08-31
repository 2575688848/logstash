## Logstash 项目运行相关

### Logstash 目录

    bin          logstash 各配置文件对应的控制脚本
        back     后端方向控制脚本
        
    conf         logstash 的配置文件
        back     后端方向配置文件
        
    logs         logstash 的日志文件
        日志文件


### 批量控制命令：

    ps -ef | grep logstash | grep -v grep | awk '{print $2}' | wc -l
    
    ps -ef | grep logstash | grep -v grep | awk '{print $2}' | xargs kill
    