output "bastion_public_ip" {
  description = "EIP du bastion"
  value       = aws_eip.bastion.public_ip
}

output "bastion_public_dns" {
  description = "DNS public du bastion"
  value       = aws_eip.bastion.public_dns
}

output "web_private_ips" {
  description = "Map AZ -> IP privee des EC2 web"
  value       = { for k, v in aws_instance.web : k => v.private_ip }
}

output "web_instance_ids" {
  description = "Map AZ -> ID instance web"
  value       = { for k, v in aws_instance.web : k => v.id }
}

output "ssh_bastion_command" {
  description = "Commande SSH pour se connecter au bastion"
  value       = "ssh -A ec2-user@${aws_eip.bastion.public_ip}"
}
