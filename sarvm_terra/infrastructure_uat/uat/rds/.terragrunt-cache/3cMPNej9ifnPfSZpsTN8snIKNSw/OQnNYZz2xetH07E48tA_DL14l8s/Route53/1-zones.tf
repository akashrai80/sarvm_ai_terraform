resource "aws_route53_zone" "uat" {
  name          = var.domain_name
  comment       = ""
  force_destroy = null
  vpc {
    vpc_id      = var.hosted_zone_vpc_id
    vpc_region  = var.hosted_zone_region
  }
}