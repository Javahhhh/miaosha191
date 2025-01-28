# miaosha项目启动文档

需安装的配置环境：

VMware虚拟机，centOS7；erlang20.1版本   redis-4.0.2版本，rabbitMQ3.6.14

若鱼1919老师视频：https://coding.imooc.com/class/168.html

参考文档：https://zhuanlan.zhihu.com/p/106343613

https://gitee.com/Agaogao/miaosha/tree/icanuser/doc

百度网盘的视频：去**吾爱破解**搜索：Java秒杀系统方案优化 高性能高并发实战（我是这样搜索到的）

## Linux

1.虚拟机启动网络连接，可以访问浏览器

参考视频：https://www.bilibili.com/video/BV1sk4y1r724/?spm_id_from=333.337.search-card.all.click&vd_source=ee74fd74820135b98fec25c8dbb328cd

B站视频：三分钟完成虚拟机联网



在window中：手动启动网络，按 Win + R，输入 services.msc

找到VMware相关的网络服务，例如，VMware DHCP Service、VMware NAT Service 等，手动打开





2.关闭防火墙，让rabbitMQ能连通window，

在window的浏览器中能访问：http://192.168.80.200:15672/

效果图：

关闭防火墙操作：su root

systemctl stop firewalld





3.还要安装下面的东西

安装gcc：yum install gcc

安装：yum install epel-release -y

yum install python-simplejson -y

## 在Linux中安装erlang:

参考：https://blog.huochengrm.cn/pc/20731.html



运行项目要先开启erlang:

centos7中cmd中：输入erl

效果图：![image-20250127222538587](C:\Users\hp\AppData\Roaming\Typora\typora-user-images\image-20250127222538587.png)

## Linux中安装rabbitmq

注意：要开启远程连接使得在window的浏览器中可以访问http://192.168.80.200:15672/才会减少bug出现。

配置文件加：

[{rabbit,[{loopback_users,[]}]}].

rabbitmq要添加到环境变量



安装好后：

Linux中：进入root权限：su root命令

进入路径：cd /usr/local/rabbitmq/sbin

打开启动rabbitmq服务：chmod +x ./rabbitmq-server     或  ./rabbitmq-server

(前提是在sbin路径)关闭 RabbitMQ ： ./rabbitmqctl stop

效果图：![image-20250127222712543](C:\Users\hp\AppData\Roaming\Typora\typora-user-images\image-20250127222712543.png)



浏览器访问地址：http://192.168.80.200:15672/

admin 123456

效果图：![image-20250127223050806](C:\Users\hp\AppData\Roaming\Typora\typora-user-images\image-20250127223050806.png)



效果图：



![image-20250127223638407](C:\Users\hp\AppData\Roaming\Typora\typora-user-images\image-20250127223638407.png)



![image-20250127223705924](C:\Users\hp\AppData\Roaming\Typora\typora-user-images\image-20250127223705924.png)

## Linux中安装redis

打开cmd：输入：wget https://download.redis.io/releases/redis-4.0.2.tar.gz

tar xzf redis-4.0.2.tar.gz
cd redis-4.0.2

要能过远程连接：

改配置文件



启动redis

centos7中打开cmd:

输入：/usr/local/redis/bin/redis-server /usr/local/redis/redis.conf

/usr/local/redis/bin/redis-cli 

效果图：![image-20250127222248920](C:\Users\hp\AppData\Roaming\Typora\typora-user-images\image-20250127222248920.png)

完成以上步骤：

## 步骤完成

window进入浏览器： http://localhost:8080/login/to_login

数据库中看到：账号：13000000000  密码：123456

miaosha_goods表，商品的开始时间要修改为今天。

![image-20250127224039076](C:\Users\hp\AppData\Roaming\Typora\typora-user-images\image-20250127224039076.png)

![image-20250127224405044](C:\Users\hp\AppData\Roaming\Typora\typora-user-images\image-20250127224405044.png)

![image-20250127224414444](C:\Users\hp\AppData\Roaming\Typora\typora-user-images\image-20250127224414444.png)





## application.properties文件

![image-20250127220947305](C:\Users\hp\AppData\Roaming\Typora\typora-user-images\image-20250127220947305.png)

![image-20250127221247318](C:\Users\hp\AppData\Roaming\Typora\typora-user-images\image-20250127221247318.png)



# Linux每次项目启动执行

redis:   /usr/local/redis/bin/redis-server /usr/local/redis/redis.conf

/usr/local/redis/bin/redis-cli 

erlang：

erl命令



# Bug情况

![image-20250127221540832](C:\Users\hp\AppData\Roaming\Typora\typora-user-images\image-20250127221540832.png)

原因是：rabbitmq Linux系统的服务虽然已经开启，但是没有与window系统的浏览器连通。



2.不能重复秒杀提示：

解决办法：清空redis所有的键

![image-20250127224335700](C:\Users\hp\AppData\Roaming\Typora\typora-user-images\image-20250127224335700.png)