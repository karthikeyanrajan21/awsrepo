#terraform {
#  backend "s3" {
#    bucket         = "kn21"
#    key            = "terraform.tfstate"
#    region         = "us-east-2"
#    encrypt        = true
#    dynamodb_table = "kndb"
#  }
#}
