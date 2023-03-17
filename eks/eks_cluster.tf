provider "aws" {
  region     = "ap-northeast-2"
}

data "terraform_remote_state" "vpc" {
  backend = "local"

  config = {
    path = "../vpc/terraform.tfstate"
  }
}

resource "aws_eks_cluster" "shop" {
  name    = "shop"
  role_arn = "arn:aws:iam::193945198166:role/EKS"

  vpc_config {
    subnet_ids = [data.terraform_remote_state.vpc.outputs.subnet1]
  }
}

output "endpoint" {
  value = aws_eks_cluster.shop.endpoint
}
