output "instance_id" {
  description = "The ID of the created EC2 instance"
  value       = aws_instance.aws_grocery_ec2.id
}

output "public_ip" {
  description = "The public IP address of the EC2 instance"
  value       = aws_instance.aws_grocery_ec2.public_ip
}
