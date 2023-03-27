resource "aws_network_interface" "ni" {
  subnet_id   = aws_subnet.first.id
}

resource "aws_instance" "web" {
  ami           = "ami-03221589fd7c8f183"
  instance_type = "t2.micro"

  network_interface {
    network_interface_id = aws_network_interface.ni.id
    device_index         = 0
  }

  key_name = "aws-go"

}