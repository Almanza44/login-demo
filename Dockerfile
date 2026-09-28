FROM richarvey/nginx-php-fpm:php8.5

COPY . .
COPY conf/nginx/nginx-site.conf /etc/nginx/sites-available/default

RUN composer install --no-dev --optimize-autoloader