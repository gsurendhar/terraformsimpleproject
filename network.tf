# VPC
resource "aws_vpc" "VPC" {
  cidr_block           = var.vpc_cidr_block
  enable_dns_hostnames = "true"
  tags = {
    Name = "VPC-terraform"
  }
}

# Subnet 1
resource "aws_subnet" "subnet-1" {
  vpc_id                                      = aws_vpc.VPC.id
  cidr_block                                  = var.subnet-1_cidr_block
  map_public_ip_on_launch                     = "true"
  enable_resource_name_dns_a_record_on_launch = "true"
  availability_zone                           = "${var.region}a"
  tags = {
    Name = "Subnet-1-Public"
  }
}

# Subnet 2
resource "aws_subnet" "subnet-2" {
  vpc_id                                      = aws_vpc.VPC.id
  cidr_block                                  = var.subnet-2_cidr_block
  map_public_ip_on_launch                     = "true"
  enable_resource_name_dns_a_record_on_launch = "true"
  availability_zone                           = "${var.region}b"
  tags = {
    Name = "Subnet-2-Public"
  }
}

# Internet Gateway
resource "aws_internet_gateway" "internet-gateway" {
  vpc_id = aws_vpc.VPC.id
  tags = {
    Name = "my-internet-gateway"
  }
}

# route table
resource "aws_route_table" "routetable" {
  vpc_id = aws_vpc.VPC.id
  route {
    cidr_block = var.route_cidr_block
    gateway_id = aws_internet_gateway.internet-gateway.id
  }
}

# routing table association
resource "aws_route_table_association" "RTA" {
  route_table_id = aws_route_table.routetable.id
  #subnet_id      = element(aws_subnet.public_subnets[*].id, count.index)
  subnet_id = aws_subnet.subnet-1.id
}

