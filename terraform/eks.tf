module "eks" {

  source = "terraform-aws-modules/eks/aws"

  version = "21.4.0"

  name = var.cluster_name

  kubernetes_version = "1.33"

  endpoint_public_access = true

  vpc_id = module.vpc.vpc_id

  subnet_ids = module.vpc.public_subnets

  enable_irsa = true

  eks_managed_node_groups = {

    default = {

      instance_types = [
        var.instance_type
      ]

      desired_size = var.desired_size

      min_size = var.min_size

      max_size = var.max_size

    }

  }

  tags = local.tags

}