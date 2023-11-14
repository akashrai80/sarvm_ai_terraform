resource "aws_lb" "alb" {
  name                              = var.alb_name
  internal                          = true
  load_balancer_type                = "application"
  security_groups                   = [aws_security_group.this.id ]
  subnets                           = var.alb_subnet_ids
  enable_cross_zone_load_balancing  = true
  enable_deletion_protection        = false
  ip_address_type                   = "ipv4"
  subnet_mapping {
    subnet_id                       = var.alb_subnet_ids[0]
  }
  subnet_mapping {
    subnet_id                       = var.alb_subnet_ids[1]
  }
  tags                              = var.alb_tags
}