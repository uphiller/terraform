resource "aws_network_interface" "foo" {
  subnet_id   = aws_subnet.first.id
}

resource "aws_instance" "web" {
  ami           = "ami-03221589fd7c8f183"
  instance_type = "t2.micro"
}