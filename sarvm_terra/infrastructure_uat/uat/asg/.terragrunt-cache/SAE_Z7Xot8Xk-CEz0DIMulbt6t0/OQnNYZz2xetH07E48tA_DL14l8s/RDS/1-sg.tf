resource "aws_security_group" "this" {
  name                      = var.rds_sg_name
  description               = var.rds_sg_description
  vpc_id                    = var.rds_sg_vpc_id
  revoke_rules_on_delete    = false
  ingress {
    description             = "From UAT App Server"
    from_port               = 5432
    to_port                 = 5432
    protocol                = "tcp"
    cidr_blocks             = ["10.20.8.123/32"]
    ipv6_cidr_blocks        = []
    prefix_list_ids         = []
    security_groups         = []
    self                    = false
  }
  ingress {
    cidr_blocks             = []
    description             = "From sarvm app webservers"
    from_port               = 5432
    to_port                 = 5432
    ipv6_cidr_blocks        = []
    prefix_list_ids         = []
    protocol                = "tcp"
    security_groups         = ["sg-0894995873d7b2bfc"]
    self                    = false
   }

   ingress {
    cidr_blocks             = ["10.20.0.87/32"]
    description             = "FROM VPN Server to DB. This security group should not be there in PROD"
    from_port               = 5432
    to_port                 = 5432
    ipv6_cidr_blocks        = []
    prefix_list_ids         = []
    protocol                = "tcp"
    security_groups         = []
    self                    = false
   }   

   egress {
    cidr_blocks             = ["0.0.0.0/0"]
    description             = ""
    from_port               = 0
    to_port                 = 0
    ipv6_cidr_blocks        = []
    prefix_list_ids         = []
    protocol                = "-1"
    security_groups         = []
    self                    = false
   }    

  tags                      = {
    Name                    = "sarvmUATDBSecurityGroup"
  }
  tags_all                  = {
    Name                    = "sarvmUATDBSecurityGroup"
  }
}