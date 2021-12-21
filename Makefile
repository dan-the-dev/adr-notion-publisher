build:
	docker build -t my-php-app .

run:
	docker run --rm --name hello-world-test my-php-app
