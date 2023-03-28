resource "aws_internet_gateway" "main" {
  vpc_id = aws_vpc.backend.id
}

resource "aws_route_table_association" "main" {
  gateway_id     = aws_internet_gateway.main.id
  route_table_id = aws_vpc.backend.default_route_table_id
}