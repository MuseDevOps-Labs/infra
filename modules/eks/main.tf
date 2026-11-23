module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "~> 21.0"

  name               = "${var.project}-${var.env}-cluster"
  kubernetes_version = var.kubernetes_version

  vpc_id     = var.vpc_id
  subnet_ids = var.subnet_ids

  endpoint_private_access = true
  endpoint_public_access  = true

  enable_irsa                              = var.enable_irsa
  enable_cluster_creator_admin_permissions = true

  # EKS system add-ons
  addons = {
    vpc-cni = {
      before_compute = true
      most_recent    = true
    }

    kube-proxy = {
      most_recent = true
    }

    coredns = {
      most_recent = true
    }
  }

  eks_managed_node_groups = {
    main = {
      instance_types = var.instance_types

      min_size     = var.min_size
      max_size     = var.max_size
      desired_size = var.desired_size

      # Ensure the worker IAM role has CNI permissions
      iam_role_attach_cni_policy = true

      use_latest_ami_release_version = false
    }
  }

  tags = {
    Project = var.project
    Env     = var.env
  }
}
