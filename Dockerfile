FROM centos:7
LABEL maintainer="2427308545@qq.com"
COPY ./nginx.repo /etc/yum.repos.d
RUN yum makecache
RUN yum install -y nginx
RUN echo "This is class cloud1/2 qinpeng" > /usr/share/nginx/html/index.html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]


