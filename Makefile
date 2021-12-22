build:
	docker-compose build

run:
	docker-compose up -d

down:
	docker-compose down

composer-install:
	docker-compose exec app composer install

help:
	docker-compose exec app php minicli help
