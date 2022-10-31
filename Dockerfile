FROM ubuntu
RUN apt-get update -y && apt-get install nginx -y
ADD default /etc/nginx/sites-available/default
EXPOSE 80/tcp
ADD index.html /usr/share/nginx/html/index.html
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
