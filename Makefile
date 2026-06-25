up:
	docker compose up -d

down:
	docker compose down --remove-orphans

build:
	docker compose build

pull:
	docker compose pull

init:
	docker compose down --remove-orphans
	docker compose build
	docker compose up -d
	docker compose run --rm php-cli composer install

php-bash:
	docker compose run --rm php-cli /bin/bash
