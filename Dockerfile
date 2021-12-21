FROM php:8.1.1-cli
COPY ./src /src
WORKDIR /src
CMD [ "php", "./index.php" ]