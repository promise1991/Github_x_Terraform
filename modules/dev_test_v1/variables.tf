
# variable "Zone" {
#  description = "Availability Zones"
#  default     = "us-east-1"
# }

# variable "ami-values" {
#   description = "AMI ID"
#   default     = "ami-0360c520857e3138f"
# }
# variable "environment" {
#   description = "EKS-Bootstrap-Server"
#  default     = "Dev"
# }




variable "ami-values" {type = string }

variable "key_name" {type = string }

variable "instance_type" {type = string }

variable "security_group_inbound_exposed_ports" { 
                         description = "List of ports to open in the security group"  
                         type   = list(number)    
                         default     = [22, 80] 
            }

variable "allowed_ssh_cidr_block" {type = string }

variable "volume_size" {type = string }

variable "region" {type = string }

variable "vpc_id" {type = string }

variable "subnet_id" {type = string }

variable "user_data" {type = string }

variable "environment" {type = string }