

provider "aws" {
  profile    = "default"
  region     = var.AWS_REGION
}

resource "aws_instance" "site" {
    ami = "ami-0f69bc5520884278e"
    instance_type="t2.micro"
    key_name="anurag"
    subnet_id = "subnet-06d5d1e047ff02f83"
    associate_public_ip_address = true
    vpc_security_group_ids = ["sg-04ec6643f9f06e221"]
        tags = {
            Name = var.name
            group = var.group
        }
}
