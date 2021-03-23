# VPC
variable vpc_name {
  description = "Name of the VPC"
  type        = string
}
variable vpc_cidr {
  description = "VPC CIDR"
  type        = string
}

# Subnets
variable subnet_azs {
  description = "Availability Zones for the subnets"
  type        = list
}
variable subnet_private_cidrs {
  description = "CIDR for private subnets"
  type        = list
}
variable subnet_public_cidrs {
  description = "CIDR for public subnets"
  type        = list
}
variable enable_nat_gateway {
  description = "Enable nat gateway for each of private subnets"
  type        = bool
}

# EKS
variable eks_cluster_name {
  description = "Name of the EKS cluster"
  type        = string
}
variable eks_cluster_version {
  description = "Version of the K8s cluster"
  type        = string
}
variable node_instance_type {
  description = "Instance type for the nodes in node group"
  type        = string
}
variable node_group_asg_max_size {
  description = "The maximum number of nodes in the node group asg"
  type        = number
}
