resource "aws_instance" "FirstEC2FromTerraform" {
  ami             = var.ami_id
  instance_type   = var.instance_type
  security_groups = [aws_security_group.allow_all.name]
  tags = {
    Name = var.instance_name
  }
}