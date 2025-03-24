variable "aws_region" {
  description = "The AWS region where resources will be created."
  type        = string
  default     = "eu-central-1"
}

variable "ami_id" {
  description = "The Amazon Machine Image (AMI) ID for the EC2 instance."
  type        = string
  default     = "ami-06ee6255945a96aba"
}

variable "instance_type" {
  description = "The type of EC2 instance to launch (e.g., t2.micro)."
  type        = string
  default     = "t2.micro"
}
