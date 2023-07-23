terraform {
  backend "s3" {
    bucket = "terraform-storre"
    key    = "sample/terraform.tfstate"
    region = "us-east-1"
  }
}


output "demo" {
  value = "Hello Word"
}