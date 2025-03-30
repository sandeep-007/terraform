variable "aws_region" {
  description = "The AWS region to deploy resources"
  type        = string
  default     = "us-east-1"
}

variable "instance_type" {
  description = "The type of EC2 instance to launch"
  type        = string
  default     = "t2.micro"
}

variable "ami_id" {
  description = "The AMI ID to use for the EC2 instance"
  type        = string
  default     = "ami-084568db4383264d4" # Amazon Linux 2 AMI (adjust based on your region)
}

variable "key_name" {
  description = "The name of the SSH key pair to use for EC2 instance"
  type        = string
}