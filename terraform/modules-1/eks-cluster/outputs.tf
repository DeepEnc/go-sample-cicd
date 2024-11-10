# EKS Module - outputs.tf
output "cluster_endpoint" {
  description = "The API server endpoint of the EKS cluster."
  value       = aws_eks_cluster.eks.endpoint
}

output "cluster_name" {
  description = "The name of the EKS cluster."
  value       = aws_eks_cluster.eks.name
}

output "cluster_arn" {
  description = "The ARN of the EKS cluster."
  value       = aws_eks_cluster.eks.arn
}
