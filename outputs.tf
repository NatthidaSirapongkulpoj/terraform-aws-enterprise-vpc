output "vpc_id" {
  value = module.vpc.vpc_id
}

output "public_subnet_id" {
  value = module.subnet.public_subnet_id
}

output "private_subnet_id" {
  value = module.subnet.private_subnet_id
}

output "security_group_id" {
  value = module.security_group.security_group_id
}

output "igw_id" {
  value = module.internet_gateway.igw_id
}
