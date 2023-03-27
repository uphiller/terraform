#resource "aws_eks_node_group" "example" {
#  cluster_name    = aws_eks_cluster.shop.name
#  node_group_name = "shop_node"
#  node_role_arn   = aws_iam_role.eks_cluster_role.arn
#  subnet_ids      = [aws_subnet.first.id, aws_subnet.second.id]
#
#  scaling_config {
#    desired_size = 1
#    max_size     = 1
#    min_size     = 1
#  }
#
#  update_config {
#    max_unavailable = 1
#  }
#}