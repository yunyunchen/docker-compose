FROM cherry535667007/docker-compose:alpine
RUN pecl install mongodb && docker-php-ext-enable mongodb
