FROM alpine:3.17
ARG DB_NAME DB_HOST DB_USER DB_PASS
RUN apk update && apk upgrade && apk add --no-cache php81 \
	php81-fpm \
	php81-json \
	php81-mysqli \
	php81-curl \
	php81-dom \
	php81-exif \
	php81-fileinfo \
	php81-mbstring \
	php81-openssl \
	php81-xml \
	php81-zip \
	php81-opcache \
	wget
WORKDIR /var/www
RUN wget https://wordpress.org/latest.tar.gz; \
    tar -xzvf latest.tar.gz; \
    cp -rf wordpress/* . && \
    rm -rf wordpress latest.tar.gz
COPY ./requirements/wordpress/conf/www.conf /etc/php81/php-fpm.d/www.conf
COPY ./requirements/wordpress/wp-config-create.sh .
RUN sh wp-config-create.sh && rm wp-config-create.sh && \
    chmod -R 777 wp-content/
CMD ["/usr/sbin/php-fpm81", "-F"]
