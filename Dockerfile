FROM php:8.3-apache-bookworm

RUN apt-get update

RUN apt-get install -y \
        libssl-dev libc-client-dev libkrb5-dev \
        libpng-dev libjpeg-dev libicu-dev
RUN docker-php-ext-install mysqli

RUN docker-php-ext-configure imap --with-kerberos --with-imap-ssl
RUN docker-php-ext-install imap
RUN docker-php-ext-install intl
RUN docker-php-ext-install gd
