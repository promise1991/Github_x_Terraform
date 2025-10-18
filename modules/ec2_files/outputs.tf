output "instance_public_ip" {                                              #    --------------------------This is the output block
                   value = aws_instance.EKS-Bootstrap-Server.public_ip
}

output "connection_to_linux_server" {     #  --------------------------This is where it connects to the Cloud
                      value = "ssh -i ~/DEPLOYED-PROJECT/IaC/Terraform/Basic-State-6th-Level-Github/modules/ec2_files/Textkey2.pem ubuntu@${aws_instance.EKS-Bootstrap-Server.public_ip}"
   # value = " ssh -i ${pathexpand(var.home_directory)}/${var.key_name} ubuntu@${aws_instance.Monitoring_Prometheus_target_Server.public_ip}"
}
