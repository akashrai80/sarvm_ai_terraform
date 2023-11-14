terraform {
    source                              = "../../../uat_infra_modules//RDS"
}
include "root" {
    path                                = find_in_parent_folders()
}
dependency "vpc" {
    config_path                         = "../vpc"
    mock_outputs                        = {
    vpc_id                              = "sample_id"
  }
}
inputs = {
    db_engine                           = "Postgres"
    db_engine_version                   = "14.7"
    db_instance_class                   = "db.t3.micro"
    db_subnet_group_name                = "sarvmuatdbsubnetgroup"
    db_deletion_protection              = true
    enabled_cloudwatch_logs_exports     = ["postgresql", "upgrade"]
    iam_database_authentication_enabled = false
    db_identifier                       = "uatpostgresdb"
    db_license_model                    = "postgresql-license"
    db_allocated_storage                = 20
    db_max_allocated_storage            = 100
    multi_az                            = false
    skip_final_snapshot                 = true
    db_tags                             = {}
    db_user_name                        = "sarvmuatdbadmin"
    rds_sg_name                         = "sarvmUATDBSecurityGroup"
    rds_sg_description                  = "sarvmUATDBSecurityGroup"
    rds_sg_vpc_id                       = dependency.vpc.outputs.vpc_id
    iam_role_name                       ="rds-monitoring-role"
    role_tags                           = {}
    # db_monitoring_role_arn            = "arn:aws:iam::326457620362:role/rds-monitoring-role"
    # db_performance_insights_kms_key_id= "arn:aws:kms:ap-south-1:326457620362:key/64fa15a4-b117-4c41-b7d1-de4ad877d713"
    # rds_sg_vpc_id                     = "vpc-0744edb503ba5b0f2"
    # db_kms_key_id                     = "arn:aws:kms:ap-south-1:326457620362:key/64fa15a4-b117-4c41-b7d1-de4ad877d713"
}


