vpc_name        = "project-1"
cidr            = "10.0.0.0/16"
azs             = ["ap-northeast-1a, ap-northeast-1c , ap-northeast-1d"]
public_subnets  = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
private_subnets = ["10.0.4.0/24", "10.0.5.0/24", "10.0.6.0/24"]


instance_type = "t2.micro"
key_name      = "project1.pem"