variable "aws_access_key" {}
variable "aws_secret_key" {}
variable "private_key_path" {}
variable "key_name" {}
variable "region" {
  default = "eu-west-2"
}
variable "network_address_space" {
  default = "10.1.0.0/16"
}
# instance 1 subnet address space
variable "subnet1_address_space" {
  default = "10.1.0.0/24"
}
# instance 2 subnet address space
variable "subnet2_address_space" {
  default = "10.1.1.0/24"
}
# instance 3 subnet address space
variable "subnet3_address_space" {
  default = "10.1.2.0/24"
}
