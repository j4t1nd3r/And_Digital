
# Commands Ran in Shell

## Deploy s3 bucket from and_digital_s3

Terraform Init
Terraform plan
Terraform apply

  

## then deploy the micro architecture from and_digital

Terraform Init
Terraform plan -out "terraform.tfplan
Terraform apply "terraform.tfplan"
>*connect to elb to confirm balancing between different availability zones.*

Terraform destroy

# Notes
Private Key in repo to show access to vms work

# Next Steps

1) consistency on files (being all lowercase.) done
2) Fix ssh access to ec2 instances to be only accessible from my PCs IP done
3) Make the ec2 instance subnets smaller
4) Store State in s3 bucket
	created s3 bucket in seperate module
	main module pretends it doesn't exist.
5) make ssh ip restriction IP a variable

x) remove duplicate code for creation of similar resources
x) Have a DNS record to point at the elb, instead of exposing elb to internet - turns out it costs money, so pass