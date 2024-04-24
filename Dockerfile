FROM linuxcontainers/wordpress-php-fpm
WORKDIR /var/www/wp

EXPOSE 9000
CMD ["php-fpm"]

