FROM ubuntu:16.04

MAINTAINER Dao Anh Dung <dung13890@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

# Install hugo
RUN apt-get update && apt-get install -y \
    hugo

RUN usermod -u 1000 www-data

WORKDIR /var/www/app

EXPOSE 1313
