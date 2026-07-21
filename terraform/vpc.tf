module "vpc" {

  source  = "terraform-aws-modules/vpc/aws"
  version = "6.0.1"

  name = "3d-tool-vpc"

  cidr = var.vpc_cidr

  azs = [
    "us-east-1a",
    "us-east-1b"
  ]

  public_subnets = [
    "10.0.1.0/24",
    "10.0.2.0/24"
  ]

  enable_nat_gateway = false

  map_public_ip_on_launch = true

  tags = local.tags

  public_subnet_tags = {

    "kubernetes.io/cluster/${var.cluster_name}" = "shared"

    "kubernetes.io/role/elb" = "1"

  }

}