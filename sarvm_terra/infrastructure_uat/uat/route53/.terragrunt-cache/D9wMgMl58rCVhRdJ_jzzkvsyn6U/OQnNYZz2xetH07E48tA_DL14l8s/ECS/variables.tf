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