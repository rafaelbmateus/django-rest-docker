
build:
	docker-compose build

start:
	docker-compose up -d

restart:
	docker-compose restart

stop:
	docker-compose down --volume

log:
	docker-compose logs

migrate:
	docker-compose run web python manage.py migrate

create_super_user:
	docker-compose run web python manage.py createsuperuser
