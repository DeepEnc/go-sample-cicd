provider "aws" {
  region = "us-west-2"
}

module "eks_cluster" {
  source        = "./modules/eks-cluster"
  region        = "us-west-2"
  vpc_cidr      = "10.0.0.0/16"
  subnet_cidrs  = ["10.0.1.0/24", "10.0.2.0/24"]
  cluster_name  = "my-eks-cluster"
}

output "eks_cluster_endpoint" {
  value = module.eks_cluster.cluster_endpoint
}

output "eks_cluster_name" {
  value = module.eks_cluster.cluster_name
}

output "eks_cluster_arn" {
  value = module.eks_cluster.cluster_arn
}
