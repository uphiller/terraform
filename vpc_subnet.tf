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

output "subnet1" {
  value = aws_subnet.first.id
}

output "subnet2" {
  value = aws_subnet.second.id
}
