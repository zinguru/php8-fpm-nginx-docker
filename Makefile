docker-up:
	docker-compose up -d

docker-down:
	docker-compose down --remove-orphans

docker-build:
	docker-compose build

docker-pull:
	docker-compose pull

init:
	docker-compose down --remove-orphans
	docker-compose pull
	docker-compose build
	docker-compose up -d
	docker-compose run --rm app-php-cli composer install
