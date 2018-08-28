provider "aws" {
  region = "us-west-1"
}

terraform {
  backend "s3" {
    bucket = "adborden-terraform"
    key    = "terraform-ci-cd/terraform.tfstate"
    region = "us-west-1"
  }
}

resource "aws_route53_zone" "main" {
  name = "sites.adborden.net"
}

####################
# Site declarations
####################

module "site_example" {
  source = "./modules/site"
  fqdn   = "example.${aws_route53_zone.main.name}"
  domain = "${aws_route53_zone.main.name}"
}

