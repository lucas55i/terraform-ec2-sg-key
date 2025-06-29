module "s3" {
  source       = "./models/s3"
  project_name = var.project_name
  tags         = var.tags
}


module "ec2" {
  source       = "./models/ec2"
  project_name = var.project_name
  tags         = var.tags
}