terraform {
  backend "s3" {
    bucket = "priyam-test-tf"
    key    = "new.tfstate"
    region = "us-east-1"
    dynamodb_table = "priyam-assgn"
  }
}
