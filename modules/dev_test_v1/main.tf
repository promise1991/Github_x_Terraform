
terraform {
     backend "s3" { 
           bucket        = "my-test-state-v1"                     
           key           = "ec2-text/dev/terraform.tfstate"                     
           region                 = "us-east-1"    
          encrypt                 = "true"    
          }
      }
     

resource "aws_instance" "Text-Server" {
  ami           =  var.ami-values
  instance_type = "t3.micro"

  key_name = "textkey"
  vpc_security_group_ids = [aws_security_group.SG.id]                    # this references the security group above

associate_public_ip_address    = true                     # to make sure public ip is display

 root_block_device {
    volume_size = 30
    volume_type = "gp3"
  }

user_data = file("install2.sh")    
# user_data = file("${path.module}/install2.sh")                 #handles instalation of docker on ec2 instance and running nginx on it
#  user_data = file("docker.sh")
# user_data = templatefile("./tools-install.sh", {})

 tags = {
    Name = "${var.environment}-Basic-ec2"
  }
}