resource "aws_eks_cluster" "shop" {
  name    = "shop"

  vpc_config {
    subnet_ids = [aws_subnet.first.id, aws_subnet.second.id]
  }
}

output "endpoint" {
  value = aws_eks_cluster.shop.endpoint
}
