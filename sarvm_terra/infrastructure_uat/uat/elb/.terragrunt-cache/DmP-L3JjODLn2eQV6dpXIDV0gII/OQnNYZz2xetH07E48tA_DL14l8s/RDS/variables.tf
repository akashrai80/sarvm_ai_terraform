#RDS Security Group
variable "rds_sg_name" {
    type = string
    default = ""
}
variable "rds_sg_description" {
    type = string
    default = ""
}
variable "rds_sg_vpc_id" {
    type = string
    default = "" 
}

#iam role
variable "iam_role_name" {
    type = string
    default = ""
}
variable "role_tags" {
    type = map(string)
    default = {}
}

#db instance variables
variable "db_engine" {
    type = string
    default = ""
}
variable "db_engine_version" {
    type = string
    default = ""
}
variable "db_instance_class" {
    type = string
    default = ""
}
variable "db_subnet_group_name" {
    type = string
    default = ""
}
variable "db_deletion_protection" {
    type = bool
    default = true
}
variable "enabled_cloudwatch_logs_exports" {
    type = list(string)
    default = []
}
variable "iam_database_authentication_enabled" {
    type = bool
    default = false
}
variable "db_identifier" {
    type = string
    default = ""
}
variable "db_kms_key_id" {
    type = string
    default = ""
}
variable "db_license_model" {
    type = string
    default = ""
}
variable "db_allocated_storage" {
    type = number
    default = 20
}
variable "db_max_allocated_storage" {
    type = number
    default = 100
}
variable "db_monitoring_role_arn" {
    type = string
    default = ""
}
variable "multi_az" {
    type = bool
    default = false
}
variable "db_performance_insights_kms_key_id" {
    type = string
    default = ""
}
variable "skip_final_snapshot" {
    type = bool
    default = true
}
variable "db_tags" {
    type = map(string)
    default = {}
}
variable "db_user_name" {
    type = string
    default = ""
}

