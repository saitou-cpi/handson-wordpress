data "aws_ami" "amazon_linux" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name = "name"
    # values = ["al2023-ami-2*-kernel-6.1-x86_64"]
    values = ["amzn2-ami-kernel-5.10-hvm-2*-x86_64-gp2"]
    # values = ["RHEL-9.3.0_HVM-*-x86_64-49-Hourly2-GP3"]
  }

}