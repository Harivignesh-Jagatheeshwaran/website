FROM ubuntu/apache2:latest
COPY . /var/www/html/ 
source /etc/apache2/envvars
