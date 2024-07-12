setup:
	@make build
	@make up 
	@make composer-update
	@make data
build:
	docker compose build --no-cache --force-rm
stop:
	docker compose stop
up:
	docker compose up -d
logs:
	docker logs
composer-update:
	docker exec toledanonews-laravel bash -c "composer update"
data:
	docker exec toledanonews-laravel bash -c "php artisan migrate"
	docker exec toledanonews-laravel bash -c "php artisan db:seed"
