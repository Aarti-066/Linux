FROM ubuntu
RUN apt-get update -y
RUN apt-get install -y apache2
COPY index.html /var/www/html/index.html
CMD ["apache2ctl", "-D", "FOREGROUND"]
EXPOSE 80
