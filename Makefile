
venv:
	python3 -m venv venv

# This does not work because `make` itself is a separate command.
activate:
	source ./venv/bin/activate


pipinstall:
	python3 -m pip install --upgrade -r requirements.txt

runserver:
	python3 melvio/manage.py runserver


migrations:
	python3 melvio/manage.py makemigrations \
	&& python3 melvio/manage.py migrate

gunicorn:
	cd melvio && gunicorn --bind localhost:8000 melvio.wsgi:application

uwsgi:
	cd melvio && uwsgi --http :8000 --module melvio.wsgi

