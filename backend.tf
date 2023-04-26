terraform {
  backend "s3" {
    bucket = "terraform-gaius-code"
    key = "DevOps"
    region = "us-east-1"
    
  }
}