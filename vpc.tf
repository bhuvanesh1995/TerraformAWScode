module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "3.14.2"


  name = var.vpc_name
  cidr = var.cidr
  azs  = var.azs

  public_subnets = var.public_subnets
  #public_subnets  = element(var.public_subnets.*.count.index)
  private_subnets = var.private_subnets
  #private_subnets  = element(var.private_subnets.*.count.index)

  enable_nat_gateway = true
  single_nat_gateway = true

  create_igw = true

  vpc_tags = {
    Name = var.vpc_name
  }

  public_subnet_tags = {
    #type = "${var.vpc_name}-public_subnets-${count.index + 1}"
    type = "opublic_subnets"
  }

  private_subnet_tags = {
    #type = "${var.vpc_name}-private_subnets-${count.index + 1}"
    type = "private_subnets"
  }

}