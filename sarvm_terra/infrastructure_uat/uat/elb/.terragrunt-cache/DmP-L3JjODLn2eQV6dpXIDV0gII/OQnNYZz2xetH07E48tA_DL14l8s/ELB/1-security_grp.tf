resource "aws_security_group" "this" {
  name                      = var.alb_sg_name
  description               = var.alb_sg_description
  vpc_id                    = var.alb_sg_vpc_id
  revoke_rules_on_delete    = false
  ingress {
    description             = "HTTP anywhere.."
    from_port               = 80
    to_port                 = 80
    protocol                = "tcp"
    cidr_blocks             = ["0.0.0.0/0"]
    ipv6_cidr_blocks        = []
    prefix_list_ids         = []
    security_groups         = []
    self                    = false
  }
  ingress {
    cidr_blocks             = ["0.0.0.0/0"]
    description             = "to be changed "
    from_port               = 0
    to_port                 = 65535
    ipv6_cidr_blocks        = []
    prefix_list_ids         = []
    protocol                = "tcp"
    security_groups         = []
    self                    = false
   }

   ingress {
    cidr_blocks             = []
    description             = "All from Bastion - OpenVPN SG"
    from_port               = 0
    ipv6_cidr_blocks        = []
    prefix_list_ids         = []
    protocol                = "-1"
    security_groups         = ["sg-08fcd3b8665f3dbeb"]
    self                    = false
    to_port                 = 0
   }
   ingress {
    cidr_blocks             = []
    description             = "All from Self SG"
    from_port               = 0
    ipv6_cidr_blocks        = []
    prefix_list_ids         = []
    protocol                = "-1"
    security_groups         = []
    self                    = true
    to_port                 = 0
   }    

   egress {
    cidr_blocks             = ["0.0.0.0/0"]
    description             = ""
    from_port               = 0
    ipv6_cidr_blocks        = []
    prefix_list_ids         = []
    protocol                = "-1"
    security_groups         = []
    self                    = false
    to_port                 = 0
   }    

  tags                      = {
    Name                    = "UATELBSecurityGroup"
  }
  tags_all                  = {
    Name                    = "UATELBSecurityGroup"
  }
}