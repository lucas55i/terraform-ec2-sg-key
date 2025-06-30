data "aws_ami" "ubuntu" {
  most_recent = true
  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"]
}

resource "aws_instance" "web" {
  ami                    = data.aws_ami.ubuntu.id
  subnet_id              = var.public_subnet_1a
  key_name               = aws_key_pair.ec2_key_pair.key_name
  vpc_security_group_ids = [var.ec2_sg]
  instance_type          = "t3.micro"

  tags = merge(
    var.tags,
    {
      Name = "${var.project_name}-ec2"
    }
  )
}