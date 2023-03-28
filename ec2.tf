resource "aws_network_interface" "ni" {
  subnet_id   = aws_subnet.first.id
#}
#
#resource "aws_security_group" "allow_all" {
#  name        = "allow_all"
#  vpc_id      = aws_vpc.backend.id
#
#  ingress {
#    from_port        = 0
#    to_port          = 0
#    protocol         = "-1"
#    cidr_blocks      = ["0.0.0.0/0"]
#  }
#
#  egress {
#    from_port        = 0
#    to_port          = 0
#    protocol         = "-1"
#    cidr_blocks      = ["0.0.0.0/0"]
#    ipv6_cidr_blocks = ["::/0"]
#  }
#
#  tags = {
#    Name = "allow_tls"
#  }
#}
#
#resource "aws_instance" "web" {
#  ami           = "ami-03221589fd7c8f183"
#  instance_type = "t2.micro"
#
#  network_interface {
#    network_interface_id = aws_network_interface.ni.id
#    device_index         = 0
#  }
#
#  vpc_security_group_ids = [aws_security_group.allow_all.id]
#
#  key_name = "aws-go"
#
#}