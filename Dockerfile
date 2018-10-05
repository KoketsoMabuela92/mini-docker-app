FROM php:7.1.8-apache

MAINTAINER Koketso Mabuela <glenton92@gmail.com>

LABEL image='kokipen/mini-docker-app:latest'

RUN mkdir /srv/app

COPY . /srv/app

COPY vhost.conf /etc/apache2/sites-available/000-default.conf

RUN chown -R root:www-data /srv/app \
&& a2enmod rewrite

RUN service apache2 start

RUN chown -R root:www-data /srv/app