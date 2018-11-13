##
# chth's playground
##

# 什么镜像为基础
FROM yingzhuo/java:8
# 作者信息
MAINTAINER chengtaiheng "chth668@163.com"
# 创建一个可以从本地主机或其他容器挂载的挂载点，一般用来存放数据库和需要保持的数据等
VOLUME /chth
# 当前目录下的文件 复制到容器
ADD springboot-docker-1.0-SNAPSHOT.jar chth.jar
# 容器启动后的命令 且不被docker run 提供的参数覆盖
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","chth.jar","--spring.profiles.active=default,debug"]