#!/bin/bash

cp .env .env_template
sed -i 's/=.*/=/' .env_template

git add .
git commit -m "New backup `date +'%Y-%m-%d %H:%M:%S'`"
git push
