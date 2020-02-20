# Commands Ran in Shell  


Access and secret key need to be environment variables for remote state backend to work:

$Env:AWS_ACCESS_KEY_ID="youraccesskey"  
$Env:AWS_SECRET_ACCESS_KEY="yoursecretkey"  

>Set the following variable in var.tf to your public IP, otherwise the ec2 instances will not be built:  

variable "ssh_IP_restriction" {  
default = "0.0.0.0/0/32"  
}  

#### Deploy s3 bucket from and_digital_s3  

>s3 bucket needs to be created before anything else to store the state file remotely for the main run, hence the subfolder: 

cd .\and_digital_backend\
terraform init  
terraform plan  
terraform apply  

#### Then deploy the micro architecture from and_digital  
cd ..\
terraform Init  
terraform plan -out "terraform.tfplan  
terraform apply "terraform.tfplan"  
>*connect to elb to confirm balancing between different availability zones.*

#### Cleanup
terraform destroy  
>yes  

cd .\and_digital_backend\  

terraform destroy
>yes  
# Notes  

Private Key in repo to show access to vms work  

# Further Steps  

x) remove duplicate code for creation of similar resources  
x) Have a DNS record to point at the elb. Can switch out elb if required / nicer url - service costs money.