PROJECT_NAME = myproject
APP_NAME = myapp

build:
	docker-compose build

start:
	docker-compose up -d

stop:
	docker-compose down --volume

clean:
	rm ${PROJECT_NAME} -rf
	rm ${APP_NAME} -rf
	rm manage.py -f
	docker-compose down -v --rmi all --remove-orphans

create_app:
	docker-compose run web ./manage.py startapp ${APP_NAME}

create_project:
	docker-compose run web django-admin startproject ${PROJECT_NAME} .

pip_list:
	docker-compose run web pip list

python:
	docker-compose run web python

shell:
	docker-compose run web python manage.py shell

ssh:
	docker-compose run web /bin/bash

django_version:
	docker-compose run web python -c "import django; print(django.get_version())"

migrate:
	docker-compose run web python manage.py migrate

create_super_user:
	docker-compose run web python manage.py createsuperuser