resource "aws_vpc" "main" {
  cidr_block           = var.vpc_cidr_blocks
  enable_dns_hostnames = true
  tags = {
    Name = var.vpc_name
  }
}
resource "aws_subnet" "public" {
  count                  = length(var.public_subnet_cidr_blocks)
  vpc_id                 = aws_vpc.main.id
  cidr_block             = element(var.public_subnet_cidr_blocks, count.index)
  availability_zone      = element(var.aws_regions_public, count.index)
  map_public_ip_on_launch = element(var.public_subnet_assign_ip, count.index)
  enable_resource_name_dns_a_record_on_launch = element(var.public_subnet_assign_ip, count.index)
  tags = {
    Name = element(var.public_subnet_names, count.index)
  }
}
resource "aws_subnet" "private" {
  count                  = length(var.private_subnet_cidr_blocks)
  vpc_id                 = aws_vpc.main.id
  cidr_block             = element(var.private_subnet_cidr_blocks, count.index)
  availability_zone      = element(var.aws_regions_private, count.index)
  tags = {
    Name = element(var.private_subnet_names, count.index)
  }
}
resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.main.id
  tags = {
    Name = var.igw_name
  }
}
resource "aws_route_table" "public" {
  vpc_id = aws_vpc.main.id
  tags = {
    Name = var.route_table_name_public
  }
}
resource "aws_route_table_association" "public" {
  count          = 4
  subnet_id      = element(aws_subnet.public.*.id, count.index)
  route_table_id = aws_route_table.public.id
}
resource "aws_route_table" "private" {
  vpc_id = aws_vpc.main.id
  tags = {
    Name = var.route_table_name_private
  }
}
