FROM php:7.2-apache-stretch
RUN apt-get update && apt-get install -y git libwebp6 libjpeg62 libpng-dev libz3-4 libxpm4 zip unzip gnupg && apt-get clean
RUN docker-php-ext-install gd zip pdo pdo_mysql
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
RUN a2enmod rewrite
