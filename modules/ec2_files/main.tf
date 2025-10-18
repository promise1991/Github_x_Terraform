
terraform {
  backend "s3" {
    bucket  = "my-test-state-v1"           # ------------------  Name of your S3 bucket
    key     = "ec2-text/dev/terraform.tfstate"      # -----------  The file name for your remote state. Note that Terraform will automatically create this path to store the state for you as soon as you initialize it
    region  = "us-east-1"                         #  -----------  Region where your bucket is created
    encrypt = true                               #  -----------   Encrypt state file at rest
  }
}
      

resource "aws_instance" "EKS-Bootstrap-Server" {                  #   ---------------- E2c Instance Block
          ami           =  var.ami_values
          instance_type = var.instance_type

         key_name = var.key_name
         vpc_security_group_ids = [aws_security_group.ec2-security-group.id]                            #   --------------- this references the  security group above

        associate_public_ip_address    = true             #    --------------------- to make sure public ip is display

       root_block_device {
                 volume_size = var.volume_size                                                    #     ----------------------This is the storage capacity block
                 volume_type = "gp3"
                             }
      
                    user_data = file("install2.sh")              #  -------------- This file handles installation of docker, as well create necessary folders to run nginx on the server. Note that the file must be inside the same project root folder.
                   #     user_data = templatefile("./tools-install.sh", {})    -------------- This is alternative in case the first one didn't work.

       tags = {
                   Name = "${var.environment}-Basic-ec2"
                  }
}
