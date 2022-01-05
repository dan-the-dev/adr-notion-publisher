build:
	docker-compose build

run:
	docker-compose up -d

down:
	docker-compose down

composer-install:
	docker-compose exec app composer install

minicli-cmd:
	docker-compose exec app php minicli $(cmd)

install: build run composer-install

restart: down run
