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
