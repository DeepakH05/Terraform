variable "cidr" {
  description = "VPC CIDR block"
  type        = string
}

variable "public_subnets" {
  description = "Public subnet CIDR list"
  type        = list(string)
}

variable "private_subnets" {
  description = "Private subnet CIDR list"
  type        = list(string)
}

variable "azs" {
  description = "Availability zones"
  type        = list(string)
}