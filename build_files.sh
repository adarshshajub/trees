#!/usr/bin/env bash

echo $python –version

echo "Building project packages----"
# python3 pip install -r requirements. txt
python3 -m pip install -r ./requirements.txt

echo "Migrating Database...."
python3 manage.py makemigrations --noinput
python3 manage.py migrate --noinput

echo "Collecting static files...."
python3 manage.py collectstatic --noinput



