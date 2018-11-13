#!/usr/bin/env bash

# 删除原有的镜像
docker rmi chth/springboot-docker:1.0.0
docker rmi chth/springboot-docker:latest

#用pom文件 clean 打包项目构建docker镜像
mvn -f ./pom.xml clean package docker:build

mvn clean -q