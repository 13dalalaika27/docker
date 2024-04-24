P
Обрано **Wordpress** та **Django**.

***WordPress***:

● Nginx
● PHP-FPM
● MariaDB

***Django***:

●Nginx
●uWSGI
●PostgreSQL

Локально завантажено та розпаковано архів wordpress у ***/var/www/wp***
```  
wget https://wordpress.org/latest.zip && unzip latest.zip && mv wordpress/* .
```
Bridge Docker - ***172.17.0.1***
Build and run:

```  
docker build -t nginx .
docker run -it -d -p 80:80 -v /var/www/wp:/var/www/wp --name nginx nginx
docker build -t php-fpm .
docker run -it -d -p 172.17.0.1:9000:9000 -v /var/www/wp:/var/www/wp --name php-fpm php-fpm
```  

Mysql: 

```  
docker run -it -d -p 172.17.0.1:3306:3306 -e MYSQL_ROOT_PASSWORD=zaC1lZDI1NTE5AA -v /var/lib/mysql:/var/lib/mysql --name mysql mysql
```  

Exec to container and create user/db for wordpress:
![image](https://github.com/13dalalaika27/docker/assets/113292337/2e739d5b-f170-4a27-982d-fdcdeabcfed2)


Go to http://exampledomain27.pp.ua and finish install:


![image](https://github.com/13dalalaika27/docker/assets/113292337/61b6a092-b945-4484-b3e0-cfeeb06b3d63)



***COMPOSE***

![image](https://github.com/13dalalaika27/docker/assets/113292337/af879dba-6bce-4e25-8f4f-2b4abec45c14)

