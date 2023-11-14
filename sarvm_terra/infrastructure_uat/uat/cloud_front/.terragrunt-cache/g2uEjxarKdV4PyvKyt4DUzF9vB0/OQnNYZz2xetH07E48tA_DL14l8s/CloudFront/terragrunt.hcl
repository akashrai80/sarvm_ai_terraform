terraform {
    source                      = "../../../uat_infra_modules//CloudFront"
}

include "root" {
    path                        = find_in_parent_folders()
}

inputs = {
    #in all the variables the key must not be changed, only value has to be changed
    domain_name                 = {
      uat-static                = "dev.sarvm.com.s3.ap-south-1.amazonaws.com"
      uat-ra                    = "web-ra.s3.ap-south-1.amazonaws.com"
      uat-admin                 = "test-admin.sarvm.ai.s3.ap-south-1.amazonaws.com"
      uat-biz                   = "biz.dev.sarvm.ai.s3.ap-south-1.amazonaws.com"
    }
    origin_id                   = {
      uat-static                = "dev.sarvm.com.s3.ap-south-1.amazonaws.com"
      uat-ra                    = "web-ra.s3.ap-south-1.amazonaws.com"
      uat-admin                 = "test-admin.sarvm.ai.s3.ap-south-1.amazonaws.com"
      uat-biz                   = "uat-biz.sarvm.ai"
    }
    origin_path                 = {
      uat-static                = ""
      uat-ra                    = "/uat"
      uat-admin                 = "/uat"
      uat-biz                   = "/dev"
    }
    default_root_object         = {
      uat-static                = ""
      uat-ra                    = "index.html"
      uat-admin                 = "index.html"
      uat-biz                   = "index.html"
    }
    comment                     = {
      uat-static                = "uat-static.sarvm.ai"
      uat-ra                    = "UAT RA web"
      uat-admin                 = "uat-admin.sarvm.ai"
      uat-biz                   = "uat-biz.sarvm.ai"
    }
    aliases                     = {
      uat-static                = ["uat-static.sarvm.ai"]
      uat-ra                    = ["uat-ra.sarvm.ai"]
      uat-admin                 = ["uat-admin.sarvm.ai"]
      uat-biz                   = ["uat-biz.sarvm.ai"]
    }
    allowed_methods             = {
      uat-static                = ["GET", "HEAD", "OPTIONS"]
      uat-ra                    = ["GET", "HEAD"]
      uat-admin                 = ["GET", "HEAD"]
      uat-biz                   = ["GET", "HEAD"]
    }
    cache_policy_id             = {
      uat-static                = "658327ea-f89d-4fab-a63d-7e88639e58f6"
      uat-ra                    = "4135ea2d-6df8-44a3-9df3-4b5a84be39ad"
      uat-admin                 = "658327ea-f89d-4fab-a63d-7e88639e58f6"
      uat-biz                   = "4135ea2d-6df8-44a3-9df3-4b5a84be39ad"
    }
    origin_request_policy_id    = {
      uat-static                = "88a5eaf4-2fd4-4709-b370-b4c650ea3fcf"
      uat-ra                    = ""
      uat-admin                 = ""
      uat-biz                   = ""
    }
    acm_certificate_arn         = "arn:aws:acm:us-east-1:326457620362:certificate/f5d78dc7-ab52-43cf-bdc0-d5715cc49408"
    price_class                 = {
      uat-static                = "PriceClass_All"
      uat-ra                    = "PriceClass_All"
      uat-admin                 = "PriceClass_All"
      uat-biz                   = "PriceClass_All"
    }
}