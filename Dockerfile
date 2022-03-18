#----------------------------------------------------------------------
# Dockerfile to run Docker Image of Apache WebServer running on Ubuntu
#
# Made by Yevhen Stadnik 19-September-2020
#----------------------------------------------------------------------

FROM ubuntu:20.04

RUN apt-get -y update
RUN apt-get -y install apache2

RUN echo "Hello World from Docker!" > /var/www/html/index.html

CMD ["/usr/sbin/apache2ctl", "-DFOREGROUND"]
EXPOSE 80
