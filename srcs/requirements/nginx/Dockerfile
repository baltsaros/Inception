FROM alpine:3.16
RUN apk update && apk upgrade && apk add --no-cache nginx openssl
RUN mkdir /etc/nginx/ssl; openssl req -x509 -newkey rsa:4096 -nodes \
	-out /etc/nginx/ssl/nginx.crt \
	-keyout /etc/nginx/ssl/nginx.key \
	-subj '/CN=Inception' -days 365
EXPOSE 443
CMD ["nginx", "-g", "daemon off;"]
