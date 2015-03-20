FROM ubuntu:14.04.2

MAINTAINER michimau <mauro.michielon@eea.europa.eu>

RUN apt-get clean && apt-get update && apt-get install -y \
         cgi-mapserver \
         mapserver-bin \
         apache2

COPY cgi-bin.tar.gz .
RUN tar -zxvf cgi-bin.tar.gz -C /usr/lib/

#enabling cgi
COPY 000-default.conf /etc/apache2/sites-enabled/000-default.conf

COPY index.html /var/www/html/index.html

RUN mkdir /usr/libexec
RUN ln -s /usr/bin/mapserv /usr/libexec/mapserver
RUN ln -s /etc/apache2/mods-available/cgid.load /etc/apache2/mods-enabled/
RUN ln -s /etc/apache2/mods-available/cgid.conf /etc/apache2/mods-enabled/
RUN a2enmod cgi

RUN mkdir /var/www/html/mapimage && chown www-data /var/www/html/mapimage

RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

CMD ["apachectl", "-D", "FOREGROUND"]
