FROM php:7-apache

RUN apt-get update -y && \
    apt-get install -y unzip vim wget mysql-client libmysqlclient-dev && \
    docker-php-ext-install pdo pdo_mysql mysqli && \
    cd /tmp && wget https://sourceforge.net/projects/tematres/files/TemaTres%202.1/tematres2.1.zip/download -O tematres2.1.zip && \
    unzip tematres2.1.zip && rm tematres2.1.zip && \
    mv tematres2.1/* /var/www/html  

COPY db.tematres.php /var/www/html/vocab/

