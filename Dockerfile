FROM apache:2.4.46-alpine
RUN apt-get update && apt-get install -y php5 && apt-get clean && rm -rf /var/lib/apt/lists/*
EXPOSE 80
ADD ["index.php","/var/www/html/"]
ENTRYPOINT ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]