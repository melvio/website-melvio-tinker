
venv:
	python3 -m virtualenv venv

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
