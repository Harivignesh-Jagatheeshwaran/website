FROM ubuntu/apache2:latest
COPY . /var/www/html/
ENTRYPOINT /usr/sbin/apache2 -D FOREGROUND
 
