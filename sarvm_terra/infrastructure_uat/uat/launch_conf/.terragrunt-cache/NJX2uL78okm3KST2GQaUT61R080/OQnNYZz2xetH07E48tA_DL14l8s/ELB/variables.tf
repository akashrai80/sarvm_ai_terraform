#ALB variables
variable "alb_name" {
    type    = string
    default = "sarvm-apps-alb"
}
variable "alb_subnet_ids" {
    type    = list(string)
    default = ["subnet-0bb17b4b9ff445f11", "subnet-054ca02815393d434"]
}
variable "alb_tags" {
    type = map(string)
    default = {
      Environment = "staging"
      Name = "sarvm-apps-alb-staging"
    }
}

############################################################

# ALB Security Group variables
variable "alb_sg_name" {
    type = string
    default = "UATELBSecurityGroup"
}
variable "alb_sg_description" {
    type = string
    default = "UATELBSecurityGroup"
}
variable "alb_sg_vpc_id" {
    type = string
    default = "" 
}

############################################################

#NLB variables
variable "nlb_name" {
    type = string
    default = "auth-nlb"
}
variable "nlb_subnet_ids" {
    type = list(string)
    default = [ "subnet-00b34c08ea054222c" ]
}
variable "nlb_logs_bucket_name" {
    type = string
    default = "sarvm-dev-logs"
}
variable "nlb_tags" {
    type = map(string)
    default = {
      Environment = "staging"
      Name = "auth-nlb"
    }
}