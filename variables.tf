variable "region" {
  description = "all services are created in this region"
  type        = string

}

variable "profile" {
  description = "who wants to create services"
  type        = string

}

variable "vpc_cidr_block" {
  description = "vpc cidr block range"
  type        = string

}

variable "subnet-1_cidr_block" {
  description = "subnet-1 cidr block ip range"
  type        = string

}

variable "subnet-2_cidr_block" {
  description = "subnet-2 cidr block ip range"
  type        = string

}

variable "route_cidr_block" {
  description = "routing table cidr block ip range"
  type        = string

}





variable "health-check-path" {
  description = "The apps public sub domain name"
  type        = string

}

variable "health-check-port" {
  description = "The apps public sub domain name"
  type        = string

}

variable "health_check_interval" {
  description = "The interval between health checks"
  type        = string
}

variable "health_check_threshold" {
  description = "The number of consecutive health checks to be considered (un)healthy."
  type        = string

}

variable "health_check_grace_period" {
  description = "Time (in seconds) after instance comes into service before checking health."
  type        = string

}

variable "mybucket1" {

}


variable "asg-min-size" {
  description = "The minimum size of the Auto Scaling Group"
  type        = string

}

variable "asg-max-size" {
  description = "The maximum size of the Auto Scaling Group"
  type        = string
}

variable "asg-def-size" {
  description = "The default/recommended size of the Auto Scaling Group"
  type        = string
}
