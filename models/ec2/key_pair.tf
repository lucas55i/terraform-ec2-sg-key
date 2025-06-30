resource "aws_key_pair" "ec2_key_pair" {
  key_name   = "${var.project_name}-pair"
  public_key = "" # You .pub
}