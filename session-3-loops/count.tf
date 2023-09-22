resource "aws_instance" "FirstEC2FromTerraform" {
  count = 3
  ami             = var.ami_id
  instance_type   = var.instance_name[count.index] == "MongoDB" || var.instance_name[count.index] == "MySQL"  ? "t3.micro" : "t2.micro" 
  security_groups = [aws_security_group.allow_all.name]
  tags = {
    Name = var.instance_name[count.index]
  }
}