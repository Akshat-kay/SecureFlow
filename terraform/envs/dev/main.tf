provider "aws" {
  region = "us-east-1"
}

module "network" {
  source   = "../../modules/network"
  vpc_cidr = "10.0.0.0/16"
}
module "eks" {
  source           = "../../modules/eks"
  cluster_name     = "secureflow-eks"
  subnet_ids       = module.network.subnet_ids
  cluster_role_arn = module.eks_role.arn
}
module "eks_role" {
  source = "../../modules/iam"
}


