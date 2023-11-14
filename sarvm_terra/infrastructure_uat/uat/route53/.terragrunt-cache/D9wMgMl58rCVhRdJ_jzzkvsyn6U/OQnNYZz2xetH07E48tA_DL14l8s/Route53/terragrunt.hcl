terraform {
    source            = "../../../uat_infra_modules//Route53"
}
include "root" {
    path              = find_in_parent_folders()
}
inputs = {
    domain_name         = "uat.sarvm.internal"
    hosted_zone_vpc_id  = dependency.vpc.outputs.vpc_id
    hosted_zone_region  = "ap-south-1"
}
dependency "vpc" {
    config_path         = "../vpc"
    mock_outputs        = {
      vpc_id            = "sample_id"
    }
}