output "frontend_url" {
  description = "Frontend ALB URL"
  value       = module.compute.alb_dns
}

output "asg_name" {
  description = "Auto Scaling Group name"
  value       = module.compute.asg_name
}
