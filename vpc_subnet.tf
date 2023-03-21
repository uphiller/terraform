resource "aws_subnet" "first" {
  vpc_id     = aws_vpc.backend.id
  availability_zone = "ap-northeast-2a"
  cidr_block = "10.0.0.0/20"
}

resource "aws_subnet" "second" {
  vpc_id     = aws_vpc.backend.id
  availability_zone = "ap-northeast-2c"
  cidr_block = "10.0.16.0/20"
}

output "subnet1" {
  value = aws_subnet.first.id
}

output "subnet2" {
  value = aws_subnet.second.id
}
