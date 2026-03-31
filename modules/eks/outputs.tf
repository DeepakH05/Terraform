output "cluster_id" {
  description = "EKS Cluster ID"
  value       = module.eks.cluster_id
}

output "cluster_endpoint" {
  description = "EKS Cluster API endpoint"
  value       = module.eks.cluster_endpoint
}

output "cluster_security_group_id" {
  description = "EKS Cluster Security Group ID"
  value       = module.eks.cluster_security_group_id
}

output "cluster_arn" {
  description = "EKS Cluster ARN"
  value       = module.eks.cluster_arn
}

output "node_group_names" {
  description = "Names of the managed node groups"
  value       = module.eks.node_group_names
}

output "node_group_arns" {
  description = "ARNs of the managed node groups"
  value       = module.eks.node_group_arns
}