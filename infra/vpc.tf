module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "2.77.0"

  name = var.vpc_name
  cidr = var.vpc_cidr

  azs             = var.subnet_azs
  private_subnets = var.subnet_private_cidrs
  public_subnets  = var.subnet_public_cidrs

  enable_nat_gateway = var.enable_nat_gateway

  tags = {
    Environment = local.Environment
  }

  vpc_tags = {
    Name = local.Name
  }
}
