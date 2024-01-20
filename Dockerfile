#----------------------------------------------------------------------
# Dockerfile to run Docker Image of Apache WebServer running on Ubuntu
#
# Made by Yevhen Stadnik 19-September-2020
#----------------------------------------------------------------------

FROM ubuntu/apache2:latest
RUN apt-get -y update
#RUN echo "<html><head><meta http-equiv='content-type' content='text/html; charset=utf-8'></head><body><h1>Домашній сайт, створений в віртуальній машині на компьютері Євгена вітає світ!</h1></body></html>" > /var/www/html/index.html
WORKDIR /var/www/html/
ARG VAR
# build time variable name similar with --build-arg <varname>=<value>
#COPY static/index.html /var/www/html/
EXPOSE 80
# docker build -f ./Dockerfile -t ubuntu22.04apache:1.0 ./images
# docker run -d -p 81:80 --name apache-service-1 ubuntu22.04apache:1.0
# docker stop apache-service-1
# docker rm apache-service-1
# docker rmi ubuntu22.04apache:1.0