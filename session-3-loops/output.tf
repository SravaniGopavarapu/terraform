output "ipaddress" {
  description = "List of Ips created in AWS are"
  value = aws_instance.FirstEC2FromTerraform.*.public_ip
}