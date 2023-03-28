#resource "aws_route_table" "example" {
#  vpc_id = aws_vpc.backend.id
#
#  route {
#    cidr_block = "0.0.0.0/0"
#    gateway_id = aws_internet_gateway.main.id
#  }
#}

resource "aws_route" "route" {
  route_table_id            = aws_vpc.backend.default_route_table_id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id = aws_internet_gateway.main.id
}