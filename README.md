[![CircleCI](https://circleci.com/gh/adborden/sites.svg?style=svg)](https://circleci.com/gh/adborden/sites)

# Terraform static sites

Create static sites hosted on AWS S3 and served by CloudFront.


## How to add a new site

## How to push content to the site

## Bootstraping this project

_Note: this has not been thoroughly tested, yet._

If you're cloning this, or starting from scratch, you need to initialize the S3
bucket used for the terraform back end. This stores the remote terraform state
so that it can be used by your CI/CD setup as well as members of your team.

    $ make bootstrap


## Managing secrets

I use an encfs to store environment variables which get sourced when working on
the project.

    $ source ./env.sh
