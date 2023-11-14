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