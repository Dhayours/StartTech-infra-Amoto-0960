provider "aws" {
  region = "us-east-1"
}

module "networking" {
  source = "./modules/networking"
}

module "compute" {
  source          = "./modules/compute"
  vpc_id          = module.networking.vpc_id
  public_subnets  = module.networking.public_subnets
  private_subnets = module.networking.private_subnets
  alb_sg          = module.networking.alb_sg
  ec2_sg          = module.networking.ec2_sg
}

module "storage" {
  source          = "./modules/storage"
  vpc_id          = module.networking.vpc_id
  public_subnets  = module.networking.public_subnets
  private_subnets = module.networking.private_subnets
  redis_sg        = module.networking.redis_sg
}

module "monitoring" {
  source   = "./modules/monitoring"
  alb_name = module.compute.alb_dns
  asg_name = module.compute.asg_name
}
