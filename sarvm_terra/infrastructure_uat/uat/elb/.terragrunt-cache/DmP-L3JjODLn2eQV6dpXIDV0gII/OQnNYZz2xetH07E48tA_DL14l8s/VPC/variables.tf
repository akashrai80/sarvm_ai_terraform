# providers variables
variable "aws_profile" {
  type    = string
  default = ""
}
variable "aws_region" {
  type    = string
  default = "ap-south-1"
}

#VPC variables
variable "vpc_name" {
  type = string
  default = ""
}
variable "aws_regions_public" {
  type    = list(string)
  default = []
}
variable "aws_regions_private" {
  type    = list(string)
  default = []
}
variable "vpc_cidr_blocks" {
  type    = string
  default = ""
}
variable "public_subnet_cidr_blocks" {
  type    = list(string)
  default = []
}
variable "private_subnet_cidr_blocks" {
  type    = list(string)
  default = []
}

variable "public_subnet_names" {
  type = list(string)
  default = [  ]
}

variable "private_subnet_names" {
  type = list(string)
  default = [  ]
}

variable "route_table_name_public" {
  type = string
  default = ""
}

variable "route_table_name_private" {
  type = string
  default = ""
}

variable "igw_name" {
  type = string
  default = ""
}

variable "public_subnet_assign_ip" {
  type = list(bool)
  default = [  ]
}