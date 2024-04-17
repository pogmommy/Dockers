#!/bin/bash

script_root="$( dirname $0 )"

for y in "${script_root}"/*.yml;do
  sudo docker-compose -f "${y}" up -d
done
