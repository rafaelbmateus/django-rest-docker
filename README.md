# Django Rest API
This example using django rest api with postgres

# How to run
1. Run the build: `make build`
4. Create database: `make migrate`
5. Create a super user: `make create_super_user`
6. Run the project: `make start`

Open in your browser: http://localhost:8000/users/

# Quickstart
## Get users
```
curl -H 'Accept: application/json; indent=4' -u admin:admin http://localhost:8000/users/
```

## Create a user
```
curl -X POST -d username=new -d email=new@example.com \
    -d is_staff=false -H 'Accept: application/json; indent=4' \
    -u admin:password http://127.0.0.1:8000/users/
```

## Get users
```
curl -H 'Accept: application/json; indent=4' -u admin:admin http://localhost:8000/groups/
```


For more informations: https://github.com/encode/django-rest-framework
