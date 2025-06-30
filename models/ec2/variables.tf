variable "project_name" {
  type        = string
  description = "Project name to be used to name the resources (Name tag)"
}

variable "tags" {
  type        = map(string)
  description = "A map of tags to add to all AWS resources"
}

variable "public_subnet_1a" {
  type        = string
  description = "Subnet to creat EKS cluster AZ 1a"
}

variable "ec2_sg" {
  type        = string
  description = "Security group"
}
