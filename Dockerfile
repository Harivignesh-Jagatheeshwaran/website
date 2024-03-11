FROM ubuntu/apache2
COPY . /var/www/html/
ENTRYPOINT export APACHE_RUN_DIR=/var/run/apache2 && /usr/sbin/apache2 -D FOREGROUND
