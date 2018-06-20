FROM cherry535667007/docker-composer:latest
RUN pecl install mongodb && docker-php-ext-enable mongodb
