FROM ubuntu/apache2:latest
COPY . /var/www/html/
ENTRYPOINT ["/bin/bash", "-c", "source /etc/apache2/envvars && exec /usr/sbin/apache2 -D FOREGROUND"]

