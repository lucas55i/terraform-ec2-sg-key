module "s3" {
  source       = "./models/s3"
  project_name = var.project_name
  tags         = var.tags
}

module "ec2" {
  source           = "./models/ec2"
  project_name     = var.project_name
  tags             = var.tags
  public_subnet_1a = module.network.ec2_subnet_puclic_1a
  ec2_sg           = module.network.ec2_sg
}

module "network" {
  source       = "./models/network"
  project_name = var.project_name
  tags         = var.tags
  cidr_block   = var.cidr_block
}