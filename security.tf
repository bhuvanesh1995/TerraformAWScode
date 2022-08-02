module "security-group" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "4.9.0"

  name                = "public-sg"
  vpc_id              = module.vpc.vpc_id
  ingress_rules       = ["ssh-tcp", "http-80-tcp"]
  ingress_cidr_blocks = ["0.0.0.0/0"]
  egress_rules        = ["all-all"]
}