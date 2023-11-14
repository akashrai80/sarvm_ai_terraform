resource "aws_cloudfront_distribution" "uat-ra" {
  enabled                           = true
  is_ipv6_enabled                   = true
  comment                           = var.comment["uat-ra"]
  default_root_object               = var.default_root_object["uat-ra"]
  aliases                           = var.aliases["uat-ra"]
  price_class                       = var.price_class["uat-ra"]
  tags = {}
  origin {
    domain_name                     = var.domain_name["uat-ra"]
    origin_id                       = var.origin_id["uat-ra"]
    connection_attempts             = 3
    connection_timeout              = 10
    origin_path                     = var.origin_path["uat-ra"]
  }
  custom_error_response {
    error_caching_min_ttl           = 10
    error_code                      = 403
    response_code                   = 403
    response_page_path              = "/index.html"
  }
  custom_error_response {
    error_caching_min_ttl           = 10
    error_code                      = 404
    response_code                   = 404
    response_page_path              = "/index.html"
  }
  default_cache_behavior {
    allowed_methods                 = var.allowed_methods["uat-ra"]
    cached_methods                  = var.allowed_methods["uat-ra"]
    target_origin_id                = var.origin_id["uat-ra"]
    cache_policy_id                 = var.cache_policy_id["uat-ra"]
    compress                        = true
    viewer_protocol_policy          = "allow-all"
    min_ttl                         = 0
    default_ttl                     = 0
    max_ttl                         = 0
    origin_request_policy_id        = var.origin_request_policy_id["uat-ra"]
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