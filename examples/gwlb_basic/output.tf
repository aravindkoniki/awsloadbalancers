output "aws_account_id" {
  description = "The AWS Account ID number of the account that owns or contains the calling entity."
  value       = module.gwlb.aws_account_id
}

output "aws_caller_arn" {
  description = "The AWS ARN associated with the calling entity."
  value       = module.gwlb.aws_caller_arn
}

output "aws_caller_user_id" {
  description = "The unique identifier of the calling entity."
  value       = module.gwlb.aws_caller_user_id
}


output "id" {
  description = "The ID and ARN of the load balancer we created."
  value       = module.gwlb.id
}

output "arn" {
  description = "The ID and ARN of the load balancer we created."
  value       = module.gwlb.arn
}

output "lb_dns_name" {
  description = "The DNS name of the load balancer."
  value       = module.gwlb.lb_dns_name
}

output "lb_arn_suffix" {
  description = "ARN suffix of our load balancer - can be used with CloudWatch."
  value       = module.gwlb.lb_arn_suffix
}

output "lb_zone_id" {
  description = "The zone_id of the load balancer to assist with creating DNS records."
  value       = module.gwlb.lb_zone_id
}

output "http_tcp_listener_arns" {
  description = "The ARN of the TCP and HTTP load balancer listeners created."
  value       = module.gwlb.http_tcp_listener_arns
}

output "http_tcp_listener_ids" {
  description = "The IDs of the TCP and HTTP load balancer listeners created."
  value       = module.gwlb.http_tcp_listener_ids
}

output "https_listener_arns" {
  description = "The ARNs of the HTTPS load balancer listeners created."
  value       = module.gwlb.https_listener_arns
}

output "https_listener_ids" {
  description = "The IDs of the load balancer listeners created."
  value       = module.gwlb.https_listener_ids
}

output "target_group_arns" {
  description = "ARNs of the target groups. Useful for passing to your Auto Scaling group."
  value       = module.gwlb.target_group_arns
}

output "target_group_arn_suffixes" {
  description = "ARN suffixes of our target groups - can be used with CloudWatch."
  value       = module.gwlb.target_group_arn_suffixes
}

output "target_group_names" {
  description = "Name of the target group. Useful for passing to your CodeDeploy Deployment Group."
  value       = module.gwlb.target_group_names
}

output "target_group_attachments" {
  description = "ARNs of the target group attachment IDs."
  value       = module.gwlb.target_group_attachments
}
