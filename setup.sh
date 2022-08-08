#!/bin/bash

#####################################
###### Development Setup Script #####
#####################################

set -euo pipefail

# If user does not yet have pipx, must install it themselves
command -v pipx >/dev/null 2>&1 || { echo >&2 "pipx must be installed, but it currently isn't. Please set it up first in whichever format works best for you.  See https://pypa.github.io/pipx/installation/ for more info."; exit 1; }

# If needed, install pipenv here in this project
command -v pipenv >/dev/null || pipx install pipenv

# Set up dev dependencies, install git pre-commit hooks
pipenv install --dev
pipenv run pre-commit install

# If it doesn't already exist, create dev config file.
# User will need to update values, especially those wrapped in `<...>` carats
[ -f .env.dev ] || cat > .env.dev << EOF
DB_HOST=db
DB_NAME=app
DB_USER=postgres
DB_PASS=<db_password_here>
POSTGRES_DB=app
POSTGRES_USER=postgres
POSTGRES_PASSWORD=<postgres_password_here>

EMAIL_BACKEND=django.core.mail.backends.smtp.EmailBackend
EMAIL_HOST=<email_host_here>
EMAIL_HOST_USER=<email_address_here>
EMAIL_HOST_PASSWORD=<email_password_here>
EMAIL_USE_TLS=True
EMAIL_PORT=587

DJANGO_SECRET_KEY=<secret_key_here>
EOF
