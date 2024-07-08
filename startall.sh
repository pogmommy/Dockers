#!/bin/bash

script_root="$( dirname $0 )"

for y in "${script_root}"/*.yml;do
  by="$(basename $y)"
#  sudo docker-compose -f "${y}" -p "${by//.}" down
  sudo docker-compose -f "${y}" pull
  sudo docker-compose -f "${y}" -p "${by//.}" up -d
done

for r in "${script_root}/docker_runs/"*.sh;do
  bash -c "${r}"
done

sudo docker image prune -f
