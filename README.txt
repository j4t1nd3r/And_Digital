
##############################################################################################
# Commands Ran in Shell
##############################################################################################
Terraform Init
Terraform plan -out "terraform.tfplan
Terraform apply "terraform.tfplan"
#connect to elb to confirm balancing between different availability zones.
Terraform destroy
##############################################################################################
# Notes
##############################################################################################
Private Key in repo to show access to vms work and .tfvars which contains aws secret key and access key.
I would not normally include these but its required for this exercise to function from the git repo, access key and secret key can be revoked later on.
##############################################################################################
# Next Steps
##############################################################################################
1) Make the ec2 subnets smaller
2) Have a DNS record to point at the load balancer
3) remove duplicate code for creation of similar resources