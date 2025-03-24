terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.72.1"
    }
  }

  required_version = ">= 1.3.0"
}

provider "aws" {
  region = var.aws_region
}

resource "aws_security_group" "grocery" {
  name_prefix = "grocery"
  description = "Security group for grocery instance"
}

resource "aws_security_group_rule" "grocery" {
  security_group_id = aws_security_group.grocery.id
  type              = "ingress"
  cidr_blocks       = ["0.0.0.0/0"]
  from_port         = 80
  to_port           = 80
  protocol          = "tcp"
}

resource "aws_instance" "grocery" {
  ami           = var.ami_id
  instance_type = var.instance_type

  tags = {
    Name = "MyTerraformInstance"
  }

  security_groups = [aws_security_group.grocery.name]  # Attach the security group
}
