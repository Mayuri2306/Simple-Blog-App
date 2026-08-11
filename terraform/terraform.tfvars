aws_region = "us-west-2"


# VPC
vpc_cidr = "10.0.0.0/16"

pub_sub_cidr = [
  "10.0.1.0/24",
  "10.0.2.0/24"
]

pri_sub_cidr = [
  "10.0.3.0/24",
  "10.0.4.0/24"
]

create_nat_gateway = true


# Backend
container_port = 5003


# ECR
repository_name = "backend-application"


# Frontend
bucket_name = "simple-blog-app-frontend-mayuri2306"


# ECS EC2 / ASG
instance_type    = "t3.micro"

min_size         = 1
max_size         = 3
desired_capacity = 1


# RDS
db_name       = "blog_db"
db_username   = "admin"

engine_version = "8.0"

instance_class = "db.t3.micro"

allocated_storage     = 20
max_allocated_storage = 30