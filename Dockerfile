FROM php:8.2-apache
#va dans le dossier /var/www/html
LABEL version="2.0-countries"
WORKDIR /var/www/html
#copier dans le dossier index.php
COPY src/index.php .
#expose le port 80
EXPOSE 80
#commande pour donner les bons droits
RUN chown -R www-data:www-data /var/www/html && chmod -R 755 /var/www/html
#lance apache
CMD ["apache2-foreground"]