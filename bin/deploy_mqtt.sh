#!/usr/bin/env bash

# https://stackoverflow.com/a/246128
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
APP_ROOT="$(dirname "$(dirname "$(readlink -fm "$0")")")"

ansible-playbook \
  -i "${APP_ROOT}/deployment/ansible/hosts" \
  "${APP_ROOT}/deployment/ansible/mqtt.yml"