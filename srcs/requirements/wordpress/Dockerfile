FROM alpine:3.17
RUN apk update && apk upgrade && apk add --no-cache php \
	php-fpm \
	php-json \
	php-mysqli \
	php-curl \
	php-dom \
	php-exif \
	php-fileinfo \
	php-mbstring \
	php-openssl \
	php-xml \
	php-zip \
	php-opcache \
	wget
WORKDIR /var/www
RUN wget http://wordpress.org/latest.tar.gz; \
	tar -xzvf latest.tar.gz; \
	rm latest.tar.gz
CMD ["/usr/sbin/php-fpm81", "-F"]
