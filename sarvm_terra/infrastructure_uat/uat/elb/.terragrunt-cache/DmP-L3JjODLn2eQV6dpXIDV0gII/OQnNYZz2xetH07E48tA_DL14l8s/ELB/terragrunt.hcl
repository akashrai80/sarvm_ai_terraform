terraform {
    source                  = "../../../uat_infra_modules//ELB"
}
include "root" {
    path                    = find_in_parent_folders()
}
inputs = {
#############################ALB###############################################
    alb_name                = "sarvm-apps-alb"
    # alb_subnet_ids          = ["subnet-054ca02815393d434", "subnet-0bb17b4b9ff445f11"]
    alb_subnet_ids          = [dependency.vpc.outputs.private_subnet_ids[0], dependency.vpc.outputs.private_subnet_ids[1]]
    alb_tags                = {
      Environment           = "staging"
      Name                  = "sarvm-apps-alb-staging"
    }
#############################SG################################################
    alb_sg_name             = "UATELBSecurityGroup"
    alb_sg_description      = "UATELBSecurityGroup"
    # alb_vpc_id              = "vpc-0744edb503ba5b0f2" 
    alb_sg_vpc_id           = dependency.vpc.outputs.vpc_id
#############################NLB###############################################
    nlb_name                = "auth-nlb"
    nlb_subnet_ids          = [ dependency.vpc.outputs.public_subnet_ids[0] ]
    nlb_logs_bucket_name    = "sarvm-dev-logs"
    nlb_tags                = {
      Environment           = "staging"
      Name                  = "auth-nlb"
    }
}
dependency "vpc" {
    config_path             = "../vpc"
    mock_outputs            = {
    vpc_id                  = "sample_id"
    private_subnet_ids      = [""]
    public_subnet_ids       = [""]
    }
}