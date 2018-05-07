# Source From https://github.com/tiangolo/uwsgi-nginx-docker/tree/master/python3.6
FROM tiangolo/uwsgi-nginx:python3.6

RUN apt-get update -y
RUN apt-get install -y vim git
RUN pip install django==1.11

COPY nginx.conf /etc/nginx/conf.d/
