provider "aws" {
    access_key = "${var.aws_access_key}"
    secret_key = "${var.aws_secret_key}"
    region = "eu-west-1"
}

resource "aws_instance" "dontstarve" {
    ami = "ami-cb4986bc"
    instance_type = "t1.micro"
}

resource "aws_security_group" "dontstarve_port" {
  name = "dontstarve_port"
  description = "Allow communicate with dontstarve"

  ingress {
      from_port = 10999
      to_port = 10999
      protocol = "udp"
      cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
      from_port = 0
      to_port = 0
      protocol = "-1"
      cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "dontstarve_port_ssh" {
  name = "dontstarve_port_ssh"
  description = "Allow communicate with instance via ssh"

  ingress {
      from_port = 22
      to_port = 22
      protocol = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
  }
}
