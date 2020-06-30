FROM ubuntu
MAINTAINER xiaoqiangnobug 15229370298@163.com
WORKDIR usr/src
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update
RUN apt-get install git -y
RUN apt-get install nginx -y
RUN git clone https://github.com/xiaoqiangnobug/dockernginx.git
WORKDIR usr/src/dockernginx
RUN chmod +x /usr/src/dockernginx/run.sh
RUN /usr/sbin/nginx -t -c /etc/nginx/nginx.conf
CMD /usr/src/dockernginx/run.sh