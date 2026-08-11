variable "aws_region" {}

variable "vpc_cidr" {
  type = string
}

variable "pub_sub_cidr" {
  type = list(string)
}

variable "pri_sub_cidr" {
  type = list(string)
}

variable "container_port" {}

variable "bucket_name" {}

variable "min_size" {
  type = number
}

variable "max_size" {
  type = number
}

variable "desired_capacity" {
  type = number
}

variable "ami_id" {
    type = string
}

variable "instance_type" {
    type = string
}



