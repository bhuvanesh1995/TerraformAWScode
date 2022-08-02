module "ec2-instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "4.1.1"


  name                   = "${var.vpc_name}-ec2-${count.index + 1}"
  count                  = 3
  subnet_id              = element(module.vpc.public_subnets,count.index)
  ami                    = data.aws_ami.ubuntu.id
  vpc_security_group_ids = [module.security-group.security_group_id]
  instance_type          = var.instance_type
  key_name               = var.key_name
  user_data              = <<-EOF
  #!/bin/bash
  sudo apt-get -y update
  sudo apt-get -y install nginx
  echo "<div><h1>${var.vpc_name}-ec2-${count.index + 1}</h1></div>" > /var/www/html/index.nginx-debian.html
  EOF

  tags = {
    "Name" = "${var.vpc_name}-ec2-${count.index + 1}"
  }

}