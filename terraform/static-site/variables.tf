

variable "AWS_REGION" {
  default = "ap-south-1"
}


variable "name" {
    description = "The name of the instance we are creating"
    default = "web"
}

variable "group" {
    description= "the name of the group we will be using for Ansible purposes"
    default = "devops-project"
}
