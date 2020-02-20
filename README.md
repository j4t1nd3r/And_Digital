# Commands Ran in Shell  


Access and Secret Key need to be added as enviroment variables for the s3 creation to work:

$Env:AWS_ACCESS_KEY_ID="youraccesskey"  
$Env:AWS_SECRET_ACCESS_KEY="yoursecretkey"  

>Set the following variable in var.tf to your public IP:  

variable "ssh_IP_restriction" {  
default = "0.0.0.0/0/32"  
}  

#### Deploy s3 bucket from and_digital_s3  

s3 bucket needs to be created before anything else to store the state file remotely for the main run: 

cd .\and_digital_backend\
Terraform init  
Terraform plan  
Terraform apply  

#### Then deploy the micro architecture from and_digital  
cd ..\
Terraform Init  
Terraform plan -out "terraform.tfplan  
Terraform apply "terraform.tfplan"  
>*connect to elb to confirm balancing between different availability zones.*

#### Cleanup
Terraform destroy  
>yes  
cd .\and_digital_backend\  

Terraform destroy
>yes  
# Notes  

Private Key in repo to show access to vms work  

# Ideal further Steps  

x) remove duplicate code for creation of similar resources  
x) Have a DNS record to point at the elb.