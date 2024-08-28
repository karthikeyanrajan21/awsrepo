terraform {
  backend "s3" {
    bucket         = "knrajan"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "dbstatelock"
  }
}
