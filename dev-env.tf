module "ec2_text" {
  source = "./modules/ec2_files"

  ami_values                       = "ami-0360c520857e3138f"
  instance_type                    = "t3.micro"
  key_name                         = "Textkey2"
#   security_group_inbound_ports      = [22, 80, 443, 8080, 9000, 5000]
#   allowed_ssh_cidr_block            = "0.0.0.0/0"
  volume_size                       = 30
  zone                            = "us-east-1"
#   vpc_id                            = "vpc-04453a0a985c3d7a0"   < -----so far we are not using this old vpc bc we are using default vpc
#   subnet_id                         = "subnet-0ccf7adee7a3f621"   <------ same here
  user_data                         = file("install2.sh")
  environment                       = "opah-github-devopts-text"
}
