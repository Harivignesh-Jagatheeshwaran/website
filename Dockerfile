FROM ubuntu

# Install Apache, curl, and wget
RUN apt-get update && \
    apt-get install -y apache2 curl wget && \
    rm -rf /var/lib/apt/lists/*

# Set ServerName in Apache configuration
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf

# Expose port 80
EXPOSE 80

# Set the working directory
WORKDIR /usr/sbin

ADD . /var/www/html/

# Start Apache in the foreground
CMD ["apachectl", "-D", "FOREGROUND"]
