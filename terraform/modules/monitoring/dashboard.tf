resource "aws_cloudwatch_dashboard" "main" {
  dashboard_name = "starttech-dashboard"

  dashboard_body = jsonencode({
    widgets = [
      {
        type   = "metric"
        x      = 0
        y      = 0
        width  = 12
        height = 6
        properties = {
          region = "us-east-1"
          metrics = [
            ["AWS/EC2", "CPUUtilization", "AutoScalingGroupName", var.asg_name]
          ]
          period      = 300
          stat        = "Average"
          title       = "EC2 CPU Utilization"
          annotations = {}
        }
      },
      {
        type   = "metric"
        x      = 12
        y      = 0
        width  = 12
        height = 6
        properties = {
          region = "us-east-1"
          metrics = [
            ["AWS/ApplicationELB", "RequestCount", "LoadBalancer", var.alb_name]
          ]
          period      = 300
          stat        = "Sum"
          title       = "ALB Request Count"
          annotations = {}
        }
      }
    ]
  })
}
