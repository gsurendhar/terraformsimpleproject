resource "aws_vpc" "VPC" {
  cidr_block = var.vpc_cidr_block
  enable_dns_hostnames = "true"
  tags {
    Name = var.vpc-tag
  }
}