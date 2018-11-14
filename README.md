# springboot-docker
这是一个简单的springboot项目和docker容器结合

第一步：将项目放到linux系统下

第二步：运行refactor.sh文件，会自动将项目打包，并创建一个chth/springboot-docker的镜像
注意修改Dockerfile文件里的基础镜像,我是用的自己的,只要是一个装有jdk的镜像即可.

第三步：运行restart.sh 利用第二步构建的镜像构建一个叫chth/springboot-docker   1.0.0 容器
注意修改 -v 后的路径 (这个是映射的log文件),前面是宿主机的log的地址，后面是容器里面的log地址。是容器里面的地址，容器里面的log地址是项目logback-spring.xml配置的地址，-v 这条命令的意思是说把容器里面的日志映射到宿主机上，便于查看。
附赠一条，进入一个正在运行的容器（里面可以执行linux命令）：docker exec 容器名 -it sh

第四步:运行stop.sh可以删除第三步的容器.

有问题需要交流的,请加qq985979206 ,欢迎交流.
