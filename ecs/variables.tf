# providers variables
variable "aws_profile" {
  type    = string
  default = ""
}
variable "aws_region" {
  type    = string
  default = "ap-south-1"
}


variable "ecs_cluster_name" {
  type = string
  default = ""
}

variable "tags" {
  type = map(string)
  default = {
    "Name" = ""
  }
}