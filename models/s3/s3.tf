resource "aws_s3_bucket" "bucket_terraform_ec2_sg_key" {
  bucket = "${var.project_name}-s3"

  tags = merge(
    var.tags,
    {
      Name = "${var.project_name}-s3"
    }
  )
}