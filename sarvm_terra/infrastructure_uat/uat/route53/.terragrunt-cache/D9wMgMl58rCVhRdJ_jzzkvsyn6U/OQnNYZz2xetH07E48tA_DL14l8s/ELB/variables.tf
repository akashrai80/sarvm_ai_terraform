#ALB variables
variable "alb_name" {
    type    = string
    default = ""
}
variable "alb_subnet_ids" {
    type    = list(string)
    default = []
}
variable "alb_tags" {
    type = map(string)
    default = {}
}

############################################################

# ALB Security Group variables
variable "alb_sg_name" {
    type = string
    default = ""
}
variable "alb_sg_description" {
    type = string
    default = ""
}
variable "alb_sg_vpc_id" {
    type = string
    default = "" 
}

############################################################

#NLB variables
variable "nlb_name" {
    type = string
    default = ""
}
variable "nlb_subnet_ids" {
    type = list(string)
    default = []
}
variable "nlb_logs_bucket_name" {
    type = string
    default = ""
}
variable "nlb_tags" {
    type = map(string)
    default = {}
}