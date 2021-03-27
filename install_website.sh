#!/usr/bin/env bash

#git clone https://github.com/melvio/website-melvio.git
#cd website-melvio/ || exit 1

sudo apt-get update  -y
sudo apt-get upgrade -y
sudo apt-get install -y python python3-pip python3-venv
sudo apt-get install -y git nginx-full ufw


if [[ ! -d venv/ ]] ; then
  python3 -m venv venv
fi
source ./venv/bin/activate

python3 -m pip install --upgrade -r requirements.txt

cd melvio/ || exit 1
python3 manage.py migrate
gunicorn --bind localhost:8000 melvio.wsgi:application




