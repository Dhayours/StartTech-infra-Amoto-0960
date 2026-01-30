resource "aws_launch_template" "backend" {
  name_prefix   = "starttech-backend-"
  image_id      = "ami-0c02fb55956c7d316" # Ubuntu 20.04 in us-east-1
  instance_type = "t3.micro"

  iam_instance_profile {
    name = aws_iam_instance_profile.ec2_profile.name
  }

  user_data = base64encode(<<EOF
#!/bin/bash
apt update -y
apt install -y docker.io
systemctl start docker
systemctl enable docker
EOF
  )

  network_interfaces {
    security_groups = [var.ec2_sg]
  }
}
