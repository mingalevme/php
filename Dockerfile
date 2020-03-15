FROM php
RUN apt-get update \
    && pecl install redis && docker-php-ext-enable redis \
    && pecl install xdebug && docker-php-ext-enable xdebug \
    && apt-get install -y libpq-dev && docker-php-ext-install pdo_pgsql \
    && apt-get install -y libicu-dev && docker-php-ext-install intl