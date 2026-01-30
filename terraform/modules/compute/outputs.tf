# modules/compute/outputs.tf

# Output the ALB DNS name
output "alb_dns" {
  description = "DNS name of the frontend ALB"
  value       = aws_lb.frontend.dns_name
}

# Output the ASG name
output "asg_name" {
  description = "Name of the Auto Scaling Group"
  value       = aws_autoscaling_group.backend_asg.name
}
