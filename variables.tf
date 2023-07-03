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

variable "route_cidr_block" {
  description = "routing table cidr block ip range"
  type        = string
  default     = "0.0.0.0/0"
}





variable "health-check-path" {
  description = "The apps public sub domain name"
  type        = string
  default     = "/"
}

variable "health-check-port" {
  description = "The apps public sub domain name"
  type        = string
  default     = "80"
}

variable "health_check_interval" {
  description = "The interval between health checks"
  type        = string
  default     = "5"
}

variable "health_check_threshold" {
  description = "The number of consecutive health checks to be considered (un)healthy."
  type        = string
  default     = "3"
}

variable "health_check_grace_period" {
  description = "Time (in seconds) after instance comes into service before checking health."
  type        = string
  default     = "3"
}

variable "mybucket1" {
  default = "terraformcodest09"
}