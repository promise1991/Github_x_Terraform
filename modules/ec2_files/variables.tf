
variable "ami_values" {type = string }

variable "key_name" {type = string }

variable "instance_type" {type = string }

# variable "security_group_inbound_ports" { 
#                          description = "List of ports to open in the security group"  
#                          type   = list(number)    
#                         # default     = [22, 80]  <------ same here
#             }

# variable "allowed_ssh_cidr_block" {type = string }

variable "volume_size" {type = number }

variable "zone" {type = string }

# variable "vpc_id" {type = string }   < -----so far we are not using this old vpc bc we are using default vpc

# variable "subnet_id" {type = string }  <------ same here

variable "user_data" {type = string }

variable "environment" {type = string }