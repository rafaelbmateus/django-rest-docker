PROJECT_NAME = myproject
APP_NAME = myapp

build:
	docker-compose build

start:
	docker-compose up -d

stop:
	docker-compose down --volume

clean:
	docker-compose down -v --rmi all --remove-orphans

create_app:
	docker-compose run web ./manage.py startapp ${APP_NAME}

create_project:
	docker-compose run web django-admin startproject ${PROJECT_NAME} .

pip_list:
	docker-compose run web pip list

python:
	docker-compose run web python3

shell:
	docker-compose run web python manage.py shell

ssh:
	docker-compose run web /bin/bash