terraform {
  backend "s3" {
    bucket         = "terraform-eks-state-s3-bucket-v1"
    key            = "VPC/terraform.tfstate"
    region         = "us-east-2"
    encrypt        = true
    dynamodb_table = "terraform-eks-state-locks"
  }
}