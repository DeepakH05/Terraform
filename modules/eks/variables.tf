variable "cluster_name" {
  description = "EKS cluster name"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID where EKS cluster will be created"
  type        = string
}

variable "subnet_ids" {
  description = "Subnet IDs where EKS nodes will be launched"
  type        = list(string)
}

variable "cluster_endpoint_public_access" {
  description = "Enable public access for EKS cluster API endpoint"
  type        = bool
  default     = true
}

variable "cluster_endpoint_private_access" {
  description = "Enable private access for EKS cluster API endpoint"
  type        = bool
  default     = true
}

variable "public_access_cidrs" {
  description = "Allowed CIDRs for public access to the EKS API"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}