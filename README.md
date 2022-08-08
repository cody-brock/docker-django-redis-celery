# About
Simple toy Django project that uses Redis and Celery to send emails.

Using this to practice task queues, redis, dockerizing apps, Django, and scripting dev environment setup.

Borrowed pieces from these links:
https://realpython.com/asynchronous-tasks-with-django-and-celery/
https://soshace.com/dockerizing-django-with-postgres-redis-and-celery/

# Setup

## Setting up dev environment
- From root of this project directory, run `./setup.sh`.
  - This provided script will take care of installing various dev dependencies for working on the project.
  - Note that the templated values it creates in `.env.dev` need to be updated accordingly.

### Misc notes on dev environment
- To get emails to send from gmail:
  - Choose a gmail account with 2-factor authentication turned on.
  - In Account -> Security -> Signing in to Google, click to add an App Password.
  - In `.env.dev` file, copy that email address in value `EMAIL_HOST_USER`, and copy that password value into `EMAIL_HOST_PASSWORD`

## Build and run container
- A docker-compose file is provided. From root of this project directory, run `docker-compose up --build`
