resource "aws_security_group" "ec2_sg" {
  name        = "allow_ssh"
  description = "sg to allow ssh"
  vpc_id      = aws_vpc.ec2_vpc.id

  tags = merge(
    var.tags,
    {
      Name = "${var.project_name}-sg"
    }
  )
}

resource "aws_vpc_security_group_ingress_rule" "allow_ssh_ipv4" {
  security_group_id = aws_security_group.ec2_sg.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 22
  ip_protocol       = "tcp"
  to_port           = 22
}


resource "aws_vpc_security_group_egress_rule" "allow_all_traffic_ipv4" {
  security_group_id = aws_security_group.ec2_sg.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1"
}
