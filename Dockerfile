FROM ubuntu
MAINTAINER xiaoqiangnobug 15229370298@163.com
WORKDIR usr/src
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update
RUN apt-get install git -y
RUN apt-get install nginx -y
RUN git clone https://github.com/xiaoqiangnobug/SelfDockerNginx.git
WORKDIR usr/src/SelfDockerNginx
RUN chmod +x /usr/src/SelfDockerNginx/run.sh
CMD /usr/src/SelfDockerNginx/run.sh