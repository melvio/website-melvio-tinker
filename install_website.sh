#!/usr/bin/env bash

sudo apt-get update
sudo apt-get install -y python python3-pip virtualenv git

git clone https://github.com/melvio/website-melvio.git
cd website-melvio/ || exit 1

python3 -m virtualenv venv
source ./venv/bin/activate
python3 -m pip install --upgrade -r requirements.txt

python3 melvio/manage.py runserver 127.0.0.1:80




