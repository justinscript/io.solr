#! /bin/bash

#################################################
#               左边网java应用发布脚本
#       (maven对java项目打包,重新启动tomcat服务器）
#
#    V1.0      Writen by: zxc       Date:2014-08-18
##################################################

path=`pwd`
#svn up project
echo "svn up project"
svn up $path

echo 'cd '$path',and mevan install package,bulid solr war'
which mvn
mvn clean && mvn install package -Dmaven.test.skip=true

