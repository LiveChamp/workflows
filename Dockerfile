FROM swr.cn-east-3.myhuaweicloud.com/livechamp-cn-v2/base/jdk:v8-jre
ADD  target/*.jar /usr/local/app.jar
RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && echo "Asia/Shanghai" > /etc/timezone 
ENTRYPOINT ["java","-jar","/usr/local/app.jar"]