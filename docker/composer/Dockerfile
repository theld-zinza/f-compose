FROM php:8.1.2-fpm-alpine

RUN apk update && apk add \
  freetype \
  freetype-dev \
  libpng-dev \
  jpeg-dev \
  libzip-dev \
  zip \
  unzip \
  supervisor \
  zlib

RUN docker-php-ext-install gd mbstring pdo_mysql

# RUN  docker-php-ext-configure gd \
#         --with-freetype-dir=/usr/bin/ \
#         --with-png-dir=/usr/bin/ \
#         --with-jpeg-dir=/usr/lib/ \
#         --with-gd

# # Extension zip for laravel
# RUN docker-php-ext-configure zip --with-libzip --with-zlib=/usr/lib/ && \
#     docker-php-ext-install zip && \
#     docker-php-ext-configure exif && \
#     docker-php-ext-install exif && \
#     docker-php-ext-enable exif

# Install composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

WORKDIR /app
