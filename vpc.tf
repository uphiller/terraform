resource "aws_vpc" "backend" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_subnet" "first" {
  vpc_id     = aws_vpc.backend.id
  availability_zone = "ap-northeast-2a"
  cidr_block = "10.0.0.0/20"
  map_public_ip_on_launch = true
}

resource "aws_subnet" "second" {
  vpc_id     = aws_vpc.backend.id
  availability_zone = "ap-northeast-2c"
  cidr_block = "10.0.16.0/20"
  map_public_ip_on_launch = true
}

resource "aws_internet_gateway" "main" {
  vpc_id = aws_vpc.backend.id
}

resource "aws_route" "route" {
  route_table_id            = aws_vpc.backend.default_route_table_id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id = aws_internet_gateway.main.id
}