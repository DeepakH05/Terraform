module "vpc" {
  source = "./modules/vpc"

  cidr            = var.cidr
  public_subnets  = var.public_subnets
  private_subnets = var.private_subnets
  azs             = var.azs
}

module "eks" {
  source = "./modules/eks"

  cluster_name = var.cluster_name
  vpc_id       = module.vpc.vpc_id
  subnet_ids   = module.vpc.private_subnet_ids

  cluster_endpoint_public_access  = true
  cluster_endpoint_private_access = true
  public_access_cidrs             = ["0.0.0.0/0"]
}