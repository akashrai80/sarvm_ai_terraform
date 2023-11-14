terraform {
    source                      = "../../../uat_infra_modules//VPC"
}

include "root" {
    path                        = find_in_parent_folders()
}

inputs = {
    vpc_name                    = "UATsarvmVPC"
    aws_regions_public          = [ "ap-south-1a","ap-south-1b","ap-south-1a","ap-south-1a" ]
    aws_regions_private         = [ "ap-south-1a","ap-south-1b","ap-south-1a","ap-south-1b","ap-south-1a" ]
    vpc_cidr_blocks             = "10.20.0.0/16"
    public_subnet_cidr_blocks   = [ "10.20.0.0/24", "10.20.1.0/24", "10.20.8.0/24", "10.20.9.0/24" ]
    private_subnet_cidr_blocks  = [ "10.20.2.0/24", "10.20.3.0/24", "10.20.4.0/24", "10.20.5.0/24", "10.20.6.0/24" ]
    public_subnet_names         = [ "UATelbPublicSubnet1a", "UATPublicSubnet1b", "appUATPublicSubnet1a", "OSUATPublicSubnet1a" ]
    private_subnet_names        = [ "appUATPrivateSubnet1a", "appUATPrivateSubnet1b", "dbUATPrivateSubnet1a", "dbUATPrivateSubnet1b", "appUATPrivateSubnet1a" ]
    route_table_name_private    = "sarvmUATPrivateRoutetable"
    route_table_name_public     = "sarvmUATPublicRoutetable"
    igw_name                    = "UATsarvmIGW"
    public_subnet_assign_ip     = [ false, false, false, true ]
}