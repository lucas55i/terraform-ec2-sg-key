output "ec2_subnet_puclic_1a" {
  value = aws_subnet.ec2_subnet_puclic_1a.id
}

output "ec2_subnet_puclic_1b" {
  value = aws_subnet.ec2_subnet_puclic_1b.id
}

output "ec2_sg" {
  value = aws_security_group.ec2_sg.id
}
