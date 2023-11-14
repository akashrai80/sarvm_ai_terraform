resource "aws_cloudfront_distribution" "uat-static" {
  enabled                           = true
  is_ipv6_enabled                   = true
  comment                           = var.comment["uat-static"]
  default_root_object               = var.default_root_object["uat-static"]
  aliases                           = var.aliases["uat-static"]
  price_class                       = var.price_class["uat-static"]
  tags = {}
  origin {
    domain_name                     = var.domain_name["uat-static"]
    origin_id                       = var.origin_id["uat-static"]
    connection_attempts             = 3
    connection_timeout              = 10
    origin_path                     = var.origin_path["uat-static"]
  }
  default_cache_behavior {
    allowed_methods                 = var.allowed_methods["uat-static"]
    cached_methods                  = var.allowed_methods["uat-static"]
    target_origin_id                = var.origin_id["uat-static"]
    cache_policy_id                 = var.cache_policy_id["uat-static"]
    compress                        = true
    viewer_protocol_policy          = "allow-all"
    min_ttl                         = 0
    default_ttl                     = 0
    max_ttl                         = 0
    origin_request_policy_id        = var.origin_request_policy_id["uat-static"]
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