# tengine syslog日志增强补丁

-------

这是基于 tengine-2.0.3 [扩展日志模块](http://tengine.taobao.org/document_cn/http_log_cn.html)中 syslog 日志功能开发的补丁, 实现了将http状态码4xx及5xx请求日志级别的提升, 以方便分离4xx客户端错误, 及5xx内部错误. 并且兼容原配置格式.

### 安装

--------

1. 下载 patch
$ git clone https://github.com/helloyi/ngxSyslogRaiseLevel.git

2. 下载 tengine-2.0.3
$ wget http://tengine.taobao.org/download/tengine-2.0.3.tar.gz
$ tar zxvf tengine-2.0.3.tar.gz
$ cd tengine-2.0.3.tar.gz

3. 打补丁
$ patch -p1 < /path/to/the/patch/directory/tengine-syslog-raiselevel-2.0.3.patch

4. 编译
此 patch 和 tengine syslog 功能绑定, 打上 patch 后, 只要启用 --with-syslog 则此功能也启用, 反之亦然.
$ ./configure --with-syslog

### 指令

--------

指令格式兼容原 syslog 日志功能指令格式.

请参照[tengine扩展日志模块](http://tengine.taobao.org/document_cn/http_log_cn.html)
中 log_target 节 syslog 日志功能指令:
> syslog:facility[:[loglevel[:raiselevel1][:raiselevel2]][:[target_ip:[target_port] | target_udgram_addr][:ident]]]
>
  1. loglevel1 表示对与http状态码大于等于400的请求日志对应的级别.
  2. loglevel2 表示对与http状态码大于等于500的请求日志对应的级别.
  3. 如果同时配置了 loglevel1 和 loglevel2, 则loglevel1对应http状态码大于等于400且小于500段的日志级别,
     loglevel2 对应http状态码大于500的日志级别.
  4. 日志级别要求 loglevel < loglevel1 < loglevel2, 其中 debug > info > notice > warn = warning > err = error > crit > alert > panic = emerg
  5. 默认不启用提升日志级别功能.

### 示例

--------

* syslog:user:info:127.0.0.1:514:ident
  以user类型和info级别将日志发送给127.0.0.1:514的UDP端口，并设置应用标记为ident(兼容模式)

* syslog:user:info:warn::127.0.0.1:514:ident
  以user类型和info级别(http状态码小于400)及warn级别(http状态码大于等于400)将日志发送给127.0.0.1:514的UDP端口，并设置应用标记为ident

* syslog:user:info::err:127.0.0.1:514:ident
  以user类型和info级别(http状态码小于500)及err级别(http状态码大于等于500)将日志发送给127.0.0.1:514的UDP端口，并设置应用标记为ident

* syslog:user:info:warn:err:127.0.0.1:514:ident
  以user类型和info级别(http状态码小于400)及warn级别(http状态码大于等于400且小于500)及err级别(http状态码大于等于500)将日志发送给127.0.0.1:514的UDP端口，并设置应用标记为ident
