# ---------------------------
# EC2 Instance
# ---------------------------
resource "aws_instance" "master" {
  ami                         = data.aws_ami.amazon_linux_2023.id
  instance_type               = "m5.large"
  subnet_id                   = aws_subnet.public_subnet_1a.id
  associate_public_ip_address = true
  iam_instance_profile        = aws_iam_instance_profile.ec2_profile.name
  vpc_security_group_ids = [
    aws_security_group.ec2_sg.id
  ]

  root_block_device {
    volume_size = 30
  }

  key_name = var.keypair

  tags = {
    Name = "${var.project}-master-ec2"
    User = var.user
  }

}

output "master_public_ips" {
  description = "Public IP address of master-ec2"
  value       = aws_instance.master.public_ip
}

output "master_private_ips" {
  description = "Private IP address of master-ec2"
  value       = aws_instance.master.private_ip
}
