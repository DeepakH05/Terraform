variable "region" {
  default = "ap-south-1"
}

variable "cluster_name" {
  default = "demo-eks"
}

variable "cidr" {
  default = "10.0.0.0/24"
}

variable "public_subnets" {
  default = ["10.0.0.0/26", "10.0.0.64/26"]
}

variable "private_subnets" {
  default = ["10.0.0.128/26", "10.0.0.192/26"]
}

variable "azs" {
  default = ["ap-south-1a", "ap-south-1b"]
}