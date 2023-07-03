variable "region" {
  description = "all services are created in this region"
  type        = string
  default     = "us-east-1"
}

variable "profile" {
  description = "who wants to create services"
  type        = string
  default     = "Surendhar"
}

variable "vpc_cidr_block" {
  description = "vpc cidr block range"
  type        = string
  default     = "10.10.0.0/16"
}

variable "subnet-1_cidr_block" {
  description = "subnet-1 cidr block ip range"
  type        = string
  default     = "10.10.10.0/24"
}

variable "subnet-2_cidr_block" {
  description = "subnet-2 cidr block ip range"
  type        = string
  default     = "10.10.20.0/24"
}
variable "vpc-tag" {
  type    = string
  default = "VPC-terraform"
}
variable "subnet-1-tag" {
  type    = string
  default = "Subnet-1-Public"
}
variable "subnet-2-tag" {
  type    = string
  default = "Subnet-2-Public"
}
variable "route_cidr_block" {
  description = "routing table cidr block ip range"
  type        = string
  default     = "0.0.0.0/0"
}

