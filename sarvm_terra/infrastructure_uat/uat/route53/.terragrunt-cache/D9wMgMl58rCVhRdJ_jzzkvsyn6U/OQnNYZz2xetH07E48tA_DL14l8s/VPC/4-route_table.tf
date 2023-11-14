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