terraform {
  backend "s3" {
    bucket = "mw-tf"
    key    = "tfstate/terraform.tfstate"
    region = "us-east-1"
  }
}

