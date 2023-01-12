terraform {
  required_version = "0.12.20"
}

provider "aws" {
  access_key = var.AWS_ACCESS_KEY
  secret_key = var.AWS_SECRET_KEY
  region     = var.AWS_REGION
}

resource "aws_instance" "site" {
    ami = "ami-0f69bc5520884278e"
    instance_type="t2.micro"
    key_name="diffender-1"
    vpc_security_group_ids = ["sg-0852d467451ced003","sg-0e52a025ddf2cbc05"]
        tags = {
            Name = var.name
            group = var.group
        }
}
