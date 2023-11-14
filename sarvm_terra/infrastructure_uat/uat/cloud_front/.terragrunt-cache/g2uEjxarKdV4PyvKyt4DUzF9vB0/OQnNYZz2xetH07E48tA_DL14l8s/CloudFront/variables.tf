variable "domain_name" {
    type = map(string)
    default = {
      uat-static    = "dev.sarvm.com.s3.ap-south-1.amazonaws.com"
      uat-ra        = "web-ra.s3.ap-south-1.amazonaws.com"
      uat-admin     = "test-admin.sarvm.ai.s3.ap-south-1.amazonaws.com"
      uat-biz       = "biz.dev.sarvm.ai.s3.ap-south-1.amazonaws.com"
    }
}
variable "origin_id" {
    type = map(string)
    default = {
      uat-static    = "dev.sarvm.com.s3.ap-south-1.amazonaws.com"
      uat-ra        = "web-ra.s3.ap-south-1.amazonaws.com"
      uat-admin     = "test-admin.sarvm.ai.s3.ap-south-1.amazonaws.com"
      uat-biz       = "uat-biz.sarvm.ai"
    }
}

variable "origin_path" {
    type = map(string)
    default = {
      uat-static    = ""
      uat-ra        = "/uat"
      uat-admin     = "/uat"
      uat-biz       = "/dev"
    }
}
variable "default_root_object" {
    type = map(string)
    default = {
      uat-static    = ""
      uat-ra        = "index.html"
      uat-admin     = "index.html"
      uat-biz       = "index.html"
    }
}
variable "comment" {
    type = map(string)
    default = {
      uat-static    = "uat-static.sarvm.ai"
      uat-ra        = "UAT RA web"
      uat-admin     = "uat-admin.sarvm.ai"
      uat-biz       = "uat-biz.sarvm.ai"
    }
}
variable "aliases" {
    type = map(list(string))
    default = {
      uat-static    = ["uat-static.sarvm.ai"]
      uat-ra        = ["uat-ra.sarvm.ai"]
      uat-admin     = ["uat-admin.sarvm.ai"]
      uat-biz       = ["uat-biz.sarvm.ai"]
    }
}

variable "allowed_methods" {
    type = map(list(string))
    default = {
      uat-static    = ["GET", "HEAD", "OPTIONS"]
      uat-ra        = ["GET", "HEAD"]
      uat-admin     = ["GET", "HEAD"]
      uat-biz       = ["GET", "HEAD"]
    }
}
variable "cache_policy_id" {
    type = map(string)
    default = {
      uat-static    = "658327ea-f89d-4fab-a63d-7e88639e58f6"
      uat-ra        = "4135ea2d-6df8-44a3-9df3-4b5a84be39ad"
      uat-admin     = "658327ea-f89d-4fab-a63d-7e88639e58f6"
      uat-biz       = "4135ea2d-6df8-44a3-9df3-4b5a84be39ad"
    }
}
variable "origin_request_policy_id" {
    type = map(string)
    default = {
      uat-static    = "88a5eaf4-2fd4-4709-b370-b4c650ea3fcf"
      uat-ra        = ""
      uat-admin     = ""
      uat-biz       = ""
    }
}
variable "acm_certificate_arn" {
    type = string
    default = "arn:aws:acm:us-east-1:326457620362:certificate/f5d78dc7-ab52-43cf-bdc0-d5715cc49408"
}
variable "price_class" {
    type = map(string)
    default = {
      uat-static    = "PriceClass_All"
      uat-ra        = "PriceClass_All"
      uat-admin     = "PriceClass_All"
      uat-biz       = "PriceClass_All"
    }
}
# variable "" {
#     type = map(string)
#     default = {
#       uat-static    = ""
#       uat-ra        = ""
#       uat-admin     = ""
#       uat-biz       = ""
#     }
# }
# variable "" {
#     type = map(string)
#     default = {
#       uat-static    = ""
#       uat-ra        = ""
#       uat-admin     = ""
#       uat-biz       = ""
#     }
# }
# variable "" {
#     type = map(string)
#     default = {
#       uat-static    = ""
#       uat-ra        = ""
#       uat-admin     = ""
#       uat-biz       = ""
#     }
# }