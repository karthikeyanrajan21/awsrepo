terraform {
  backend "s3" {
    bucket         = "knbucket21"
    key            = "terraform/state.tfstate"
    region         = "us-east-1"
    dynamodb_table = "dbstatelock"
  }
}
