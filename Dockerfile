FROM cherry535667007/docker-composer:apline
RUN pecl install mongodb && docker-php-ext-enable mongodb
