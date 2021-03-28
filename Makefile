
venv:
	python3 -m venv venv

# This does not work because `make` itself is a separate command.
activate:
	source ./venv/bin/activate


pipinstall:
	python3 -m pip install --upgrade -r requirements.txt

runserver:
	python3 melvio/manage.py runserver 0.0.0.0:8000


migrations:
	python3    application/manage.py makemigrations \
	&& python3 application/manage.py migrate


collectstatic:
	python3 application/manage.py collectstatic

gunicorn:
	cd application && gunicorn --bind localhost:8000 melvio.wsgi:application

uwsgi:
	cd application && uwsgi --http :8000 --module melvio.wsgi
