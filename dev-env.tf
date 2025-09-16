module "dev_test_v1" {
	source                                   = "./modules/dev_test_v1"                     
	ami-values                               = "ami-0360c520857e3138f"
	instance_type                            = "t3.micro"
	key_name                                 = "textkey"
	# instance_name                            = "dev_test_v1"
	security_group_inbound_exposed_ports     = [22, 80, 443, 8080, 9000, 5000]
	allowed_ssh_cidr_block                   = "0.0.0.0/0"
	volume_size                              = 30
	region                                   ="us-east-1"
	vpc_id                                   = "vpc-0a453a0a985c3d7a0"
	subnet_id                                = "subnet-0ccf70adec7e3f621"
	user_data                                = file("install2.sh")    
	environment                              = "devOpts_v1"                                                                     
}
