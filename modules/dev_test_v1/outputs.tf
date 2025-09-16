output "instance_public_ip" {
  value = aws_instance.Text-Server.public_ip
}

output "connection_to_linux_server" {
  value = "ssh -i ~/DevOps/textkey.pem ubuntu@${aws_instance.Text-Server.public_ip}"
  # value = " ssh -i ${pathexpand(var.home_directory)}/${var.key_name} ubuntu@${aws_instance.Monitoring_Prometheus_target_Server.public_ip}"
}

