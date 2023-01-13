

provider "aws" {
  profile    = "default"
  region     = var.AWS_REGION
}

resource "aws_instance" "site" {
    ami = "ami-0f69bc5520884278e"
    instance_type="t2.micro"
    key_name="terraform-key"
    vpc_security_group_ids = ["sg-0e52a025ddf2cbc05"]
        tags = {
            Name = var.name
            group = var.group
        }
}
