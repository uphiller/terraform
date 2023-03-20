variable "AWS_ACCESS_KEY_ID_1" {
  type = string
}

variable "AWS_SECRET_ACCESS_KEY" {
  type = string
}

provider "aws" {
  access_key =  var.AWS_ACCESS_KEY_ID
  secret_key = var.AWS_SECRET_ACCESS_KEY
  region     = "ap-northeast-2"
}
