provider "aws" {
   region     = "ap-south-1"
}


resource "aws_instance" "ec2_example" {

   ami           = "ami-007020fd9c84e18c7"
   subnet_id     = "subnet-0877e268bff11bb3a"
   key_name      = "keypair"
   instance_type =  "t2.micro"
   count = 1
   associate_public_ip_address = var.enable_public_ip

   tags = {
           Name = "Terraform EC2"
   }

}

variable "enable_public_ip" {
  description = "Enable public IP address"
  type        = bool
  default     = true
} 
