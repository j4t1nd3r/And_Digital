# Configure to store TF State in the s3 bucket
terraform {
  backend "s3" {
    bucket         = "and-digital-tf-state"
    key            = "terraform.tfstate"
    region         = "eu-west-2"
      }
}