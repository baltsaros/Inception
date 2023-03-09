all:	build
	#@mkdir srcs
	#@mkdir srcs/requirements
	#@touch srcs/docker-compose.yml srcs/.env
	#@mkdir srcs/requirements/bonus
	#@mkdir srcs/requirements/mariadb
	#@mkdir srcs/requirements/nginx
	#@mkdir srcs/requirements/tools
	#@mkdir srcs/requirements/wordpress
	#@mkdir srcs/requirements/nginx/conf
	#@mkdir srcs/requirements/nginx/tools
	#@touch srcs/requirements/nginx/Dockerfile
	#@touch srcs/requirements/nginx/.dockerignore
	#@mkdir srcs/requirements/mariadb/conf
	#@mkdir srcs/requirements/mariadb/tools
	#@touch srcs/requirements/mariadb/Dockerfile
	#@touch srcs/requirements/mariadb/.dockerignore

build:
	docker-compose -f ./srcs/docker-compose.yml --env-file=./srcs/.env up -d --build 

stop:
	docker-compose -f ./srcs/docker-compose.yml stop

down:
	docker-compose -f ./srcs/docker-compose.yml down

clean: down
	docker system prune

fclean: stop clean
	docker system prune -a -f
	docker volume prune -f
	@sudo rm -rf ~/data/wordpress/*
	@sudo rm -rf ~/data/mariadb/*
