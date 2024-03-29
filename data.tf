data "aws_ami" "amazon_linux_2023" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name = "name"
    # values = ["al2023-ami-2*-kernel-6.1-x86_64"]
    values = ["RHEL-9.3.0_HVM-*-x86_64-49-Hourly2-GP3"]
  }

}