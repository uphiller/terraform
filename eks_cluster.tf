resource "aws_eks_cluster" "shop" {
  name    = "shop"
  role_arn = aws_iam_role.eks_cluster_role.arn

  vpc_config {
    subnet_ids = [aws_subnet.first.id, aws_subnet.second.id]
  }
}