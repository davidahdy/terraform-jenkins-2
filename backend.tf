terraform {
  required_version = ">= 1.5.0"

  # Enable the lockfile feature
  use_lockfile = true

  backend "s3" {
    bucket  = "hello-app-s3-jenkins"
    key     = "eks/terraform.tfstate"
    region  = "us-east-1"
    encrypt = true
  }
}
