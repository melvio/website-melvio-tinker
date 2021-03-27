#!/usr/bin/env bash

#git clone https://github.com/melvio/website-melvio.git
#cd website-melvio/ || exit 1

sudo apt-get update -y
sudo apt-get install -y python python3-pip virtualenv git


if [[ ! -d venv/ ]] ; then
  python3 -m virtualenv venv
fi
source ./venv/bin/activate

python3 -m pip install --upgrade -r requirements.txt

python3 melvio/manage.py migrate
python3 melvio/manage.py runserver 127.0.0.1:80




