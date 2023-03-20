resource "aws_eks_cluster" "shop" {
  name    = "shop"
  role_arn = "arn:aws:iam::193945198166:user/eks"

  vpc_config {
    subnet_ids = [aws_subnet.first.id, aws_subnet.second.id]
  }
}

output "endpoint" {
  value = aws_eks_cluster.shop.endpoint
}
