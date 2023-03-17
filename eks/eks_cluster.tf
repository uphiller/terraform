provider "aws" {
  access_key = "AKIAS2KAI3ZLFN3IBCUQ"
  secret_key = "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"
  region     = "ap-northeast-2"
}

variable "cluster_name" {
  default = "shop"
  type    = string
}

resource "aws_eks_cluster" "shop" {
  name    = var.cluster_name
  role_arn = "arn:aws:iam::193945198166:role/EKS"

  vpc_config {
    subnet_ids = ["subnet-015acc0c1ab472a93","subnet-090aded7322b3ade3","subnet-01d0a23a70b6e1630","subnet-0f793203dcc144a53"]
  }
}

output "endpoint" {
  value = aws_eks_cluster.shop.endpoint
}
