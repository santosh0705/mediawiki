variable vpc_name {
  description = "Name of the VPC"
  type        = string
}
variable vpc_cidr {
  description = "VPC CIDR"
  type        = string
}

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
