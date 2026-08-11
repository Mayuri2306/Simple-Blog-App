module "vpc" {
  source = "./modules/vpc"

  vpc_cidr      = var.vpc_cidr
  pub_sub_cidr  = var.pub_sub_cidr
  pri_sub_cidr  = var.pri_sub_cidr
}

module "ALB" {
  source = "./modules/ALB"

  vpc_id          = module.vpc.vpc_output
  public_subnets  = module.vpc.public_subnets

  container_port  = var.container_port
}


module "sg" {
  source = "./modules/sg"

  vpc_id = module.vpc.vpc_output

  alb_sg_id = module.ALB.alb_sg_id
}

module "ecr" {
  source = "./modules/ecr"
}

module "ecs" {
  source = "./modules/ecs"

  repo_url      = module.ecr.repo_url
  container_port = var.container_port

  private_subnets = module.vpc.private_subnets
  backend_sg_id = module.sg.sg_id

  target_group_arn = module.ALB.target_group_arn

}

module "s3" {
  source = "./modules/s3"
  
  bucket_name = var.bucket_name

}

module "cloudfront" {
  source = "./modules/cloudfront"

  alb_dns = module.ALB.alb_dns
}




