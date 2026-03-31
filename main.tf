module "vpc" {
  source = "./modules/vpc"

  cidr = var.cidr

  public_subnets  = var.public_subnets
  private_subnets = var.private_subnets

  azs = var.azs
}

module "eks" {
  source = "./modules/eks"

  cluster_name = var.cluster_name

  vpc_id     = module.vpc.vpc_id
  subnet_ids = module.vpc.public_subnet_ids
}