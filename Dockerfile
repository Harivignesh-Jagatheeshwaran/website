FROM ubuntu/apache2
COPY . /var/www/html/
ENTRYPOINT /usr/sbin/apache2 -D FOREGROUND
