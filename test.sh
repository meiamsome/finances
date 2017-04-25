#!/bin/bash
set -e

pep8 --exclude="*migrations*" --ignore=E402 .
./manage.py makemigrations
./manage.py migrate
coverage run --source=. manage.py test
