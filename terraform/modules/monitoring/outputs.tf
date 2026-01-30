output "log_group_backend" {
  value = aws_cloudwatch_log_group.backend.name
}

output "dashboard_name" {
  value = aws_cloudwatch_dashboard.main.dashboard_name
}
