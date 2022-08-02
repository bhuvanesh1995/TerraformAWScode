output "security_group_id" {
  description = "The ID of the security group"
  value       = module.security-group.security_group_id
}

output "security_group_vpc_id" {
  description = "The VPC ID"
  value       = module.security-group.security_group_vpc_id
}