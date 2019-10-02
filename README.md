# Creating new project
1. Run the build: `make build`
2. Create project: `make create_project`
3. Create app: `make create_app` If you are using linux run `sudo chown -R $USER:$USER .`
4. Update database config
4. Create database: `make migrate`
5. Create a super user: `make create_super_user`
6. Run the project: `make start`

## Database config
```
<myproject>/settings.py
...
DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.postgresql_psycopg2',
        'NAME': 'postgres',
        'USER': 'postgres',
        'HOST': 'db',
        'PORT': 5432,
    }
}
...
```
For more informations: https://docs.djangoproject.com/en/1.11/ref/settings/#databases

## Next steps?
1. [Writing your first Django app](https://docs.djangoproject.com/en/1.7/intro/tutorial02/)
