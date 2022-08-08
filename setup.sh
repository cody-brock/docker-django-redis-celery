#!/bin/bash

#####################################
###### Development Setup Script #####
#####################################

set -euo pipefail

command -v pipx >/dev/null 2>&1 || { echo >&2 "pipx must be installed, but it currently isn't. Please set it up first in whichever format works best for you.  See https://pypa.github.io/pipx/installation/ for more info."; exit 1; }

command -v pipenv >/dev/null || pipx install pipenv

pipenv install --dev
pipenv run pre-commit install
