.PHONY: up down restart build clean logs db-shell composer artisan php

# Load Environtment
include ./docker/.env

up:
	docker-compose up -d

down:
	docker-compose down

restart:
	docker-compose restart

build:
	docker-compose build

clean:
	docker-compose down -v
	docker system prune -f

logs:
	docker-compose logs -f

db-shell:
	docker-compose exec mysql mysql -u ${MYSQL_USER} -p 

composer:
	docker-compose exec php composer $(filter-out $@,$(MAKECMDGOALS))

artisan:
	docker-compose exec php php artisan $(filter-out $@,$(MAKECMDGOALS))

php:
	docker-compose exec php $(filter-out $@,$(MAKECMDGOALS))

# Catch-all target to allow passing arguments to composer, artisan, and php commands
%:
	@: