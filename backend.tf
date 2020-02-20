# Configure to store TF State in the s3 bucket
terraform {
  backend "s3" {
    encrypt        = true
    bucket         = "and-digital-tf-state"
    dynamodb_table = "terraform-state-lock-dynamo"
    region         = "eu-west-2"
    key            = "terraform.tfstate"
      }
}