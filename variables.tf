variable "region" {
  description = "AWS Region"
  default     = "ap-south-1"
}

variable "cluster_name" {
  description = "EKS Cluster Name"
  default     = "demo-eks"
}

variable "cidr" {
  description = "VPC CIDR"
  default     = "10.0.0.0/24"
}

variable "public_subnets" {
  description = "Public subnet CIDRs"
  default     = ["10.0.0.0/26", "10.0.0.64/26"]
}

variable "private_subnets" {
  description = "Private subnet CIDRs"
  default     = ["10.0.0.128/26", "10.0.0.192/26"]
}

variable "azs" {
  description = "Availability Zones"
  default     = ["ap-south-1a", "ap-south-1b"]
}