variable "instance_name" {
  description = "Value of the Name tag for the EC2 instance"
  type        = string
  default     = "Instance-from-Terraform"
}

variable "instance_type" {
  description = "Value of the instancetype  for the EC2 instance"
  type        = string
  default     = "t2.micro"
}

variable "ami_id" {
  description = "Value of the ami id for the EC2 instance"
  type        = string
  default     = "ami-03265a0778a880afb"
}

variable "aws_region" {
  default     = "us-east-1"
  type        = string
  description = "Value of the aws region for the EC2 instance"
}

variable "sg_name" {
  default     = "allow-all"
  description = "Value for the security group name for EC2 instance"
  type        = string
}

variable "sg_cidr" {
  type      = list
  default = ["0.0.0.0/0"]
}