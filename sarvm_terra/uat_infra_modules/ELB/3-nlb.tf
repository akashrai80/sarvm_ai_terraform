resource "aws_lb" "network" {
  name                  = var.nlb_name
  load_balancer_type    = "network"
  subnets               = var.nlb_subnet_ids
  access_logs {
    enabled             = true
    bucket              = var.nlb_logs_bucket_name
  }
  tags                  = var.nlb_tags
}