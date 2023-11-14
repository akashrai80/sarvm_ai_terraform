module "VPC" {
  source                      = "./modules/VPC"
  vpc_name                    = var.vpc_name
  aws_regions_public          = var.aws_regions_public
  aws_regions_private         = var.aws_regions_private
  vpc_cidr_blocks             = var.vpc_cidr_blocks
  public_subnet_cidr_blocks   = var.public_subnet_cidr_blocks
  private_subnet_cidr_blocks  = var.private_subnet_cidr_blocks
  public_subnet_names         = var.public_subnet_names
  private_subnet_names        = var.private_subnet_names
  igw_name                    = var.igw_name
  route_table_name_public     = var.route_table_name_public
  route_table_name_private    = var.route_table_name_private
  public_subnet_assign_ip     = var.public_subnet_assign_ip
}