resource "aws_cloudfront_distribution" "uat-admin" {
  enabled                           = true
  is_ipv6_enabled                   = true
  comment                           = var.comment["uat-admin"]
  default_root_object               = var.default_root_object["uat-admin"]
  aliases                           = var.aliases["uat-admin"]
  price_class                       = var.price_class["uat-admin"]
  tags = {}
  origin {
    domain_name                     = var.domain_name["uat-admin"]
    origin_id                       = var.origin_id["uat-admin"]
    connection_attempts             = 3
    connection_timeout              = 10
    origin_path                     = var.origin_path["uat-admin"]
  }
  default_cache_behavior {
    allowed_methods                 = var.allowed_methods["uat-admin"]
    cached_methods                  = var.allowed_methods["uat-admin"]
    target_origin_id                = var.origin_id["uat-admin"]
    cache_policy_id                 = var.cache_policy_id["uat-admin"]
    compress                        = true
    viewer_protocol_policy          = "allow-all"
    min_ttl                         = 0
    default_ttl                     = 0
    max_ttl                         = 0
    origin_request_policy_id        = var.origin_request_policy_id["uat-admin"]
  }
  restrictions {
    geo_restriction {
      restriction_type              = "none"
      locations                     = []
    }
  }
  viewer_certificate {
    cloudfront_default_certificate  = false
    acm_certificate_arn             = var.acm_certificate_arn
    minimum_protocol_version        = "TLSv1.2_2021"
    ssl_support_method              = "sni-only"
  }
}