FROM richarvey/nginx-php-fpm:latest

COPY . .

# Copiar la configuración de Nginx para que Laravel maneje las rutas
COPY conf/nginx/nginx-site.conf /etc/nginx/sites-available/default

RUN composer install --no-dev --optimize-autoloader
RUN php artisan config:clear && php artisan route:clear && php artisan view:clear