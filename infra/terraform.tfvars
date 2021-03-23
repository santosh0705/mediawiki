# VPC
vpc_name = "mediawiki_vpc"
vpc_cidr = "10.0.0.0/16"

#Subnets
subnet_azs           = ["ap-south-1a", "ap-south-1b", "ap-south-1c"]
subnet_private_cidrs = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
subnet_public_cidrs  = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]
enable_nat_gateway   = true

# EKS
eks_cluster_name        = "mediawiki_cluster"
eks_cluster_version     = "1.17"
node_instance_type      = "m4.large"
node_group_asg_max_size = 3
