FROM cherry535667007/docker-composer:alpine
RUN pecl install mongodb && docker-php-ext-enable mongodb
