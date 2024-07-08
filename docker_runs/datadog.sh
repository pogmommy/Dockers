#!/bin/bash

script_root="$( dirname $0 )"

source "${script_root}/../.env"
sudo docker stop datadog-agent
sudo docker rm datadog-agent
sudo docker pull gcr.io/datadoghq/agent:7
sudo docker run -d --cgroupns host --pid host --name datadog-agent -v /var/run/docker.sock:/var/run/docker.sock:ro -v /proc/:/host/proc/:ro -v /sys/fs/cgroup/:/host/sys/fs/cgroup:ro -e DD_SITE="${DD_SITE}" -e DD_API_KEY="${DD_API_KEY}" gcr.io/datadoghq/agent:7
