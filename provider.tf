provider "aws" {
  access_key = "${var.AWS_ACCESS_KEY}"
  secret_key = "${var.AWS_SECRET_KEY}"
  region = "${var.AWS_REGION}"
}

resource "aws_vpc" "my_vpc" {
  cidr_block = "10.0.0.0/16"
}

