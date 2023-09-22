resource "aws_instance" "FirstEC2FromTerraform" {
  
  ami             = var.ami_id
  instance_type   = var.instance_name == "MongoDB" || var.instance_name == "MySQL"  ? "t3.micro" : "t2.micro" 
  security_groups = [aws_security_group.allow_all.name]
  tags = {
    Name = var.instance_name
  }
}