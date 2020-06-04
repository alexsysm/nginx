FROM ubuntu:latest

RUN apt-get -y update && apt-get -y upgrade && \
    apt-get install -y iputils-ping net-tools vim && \
    apt-get install -y nginx

RUN chown -R www-data:www-data /var/lib/nginx

SHELL [ "/bin/bash" ]

EXPOSE 80

CMD /usr/sbin/nginx -g "daemon off;"