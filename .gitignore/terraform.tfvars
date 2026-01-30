########################################
# Global / Project Settings
########################################

project_name = "starttech-amoto"
environment  = "dev"
region       = "us-east-1"


########################################
# Networking
########################################

vpc_cidr = "10.0.0.0/16"

public_subnet_cidrs = [
  "10.0.1.0/24",
  "10.0.2.0/24"
]

private_subnet_cidrs = [
  "10.0.101.0/24",
  "10.0.102.0/24"
]


########################################
# Compute (EC2 / ECS)
########################################

instance_type  = "t3.micro"
instance_count = 1

# Must already exist in AWS EC2 → Key Pairs
key_pair_name = "starttech-keypair"


########################################
# Container / Application
########################################

backend_container_port  = 80
frontend_container_port = 5173

backend_image  = "starttech-backend:latest"
frontend_image = "starttech-frontend:latest"


########################################
# Database (RDS – PostgreSQL)
########################################

db_engine          = "postgres"
db_engine_version  = "15.4"
db_instance_class  = "db.t3.micro"
db_name            = "starttechdb"
db_username        = "starttechadmin"

# CHANGE THIS before real deployment
db_password = "StartTech123!"


########################################
# Storage (S3)
########################################

enable_s3     = true
s3_bucket_name = "starttech-amoto-assets-dev"


########################################
# Security
########################################

allowed_ssh_cidr  = ["0.0.0.0/0"]
allowed_http_cidr = ["0.0.0.0/0"]


########################################
# Tags
########################################

tags = {
  Project     = "StartTech-Amoto"
  Environment = "dev"
  Owner       = "Dhayours"
}
