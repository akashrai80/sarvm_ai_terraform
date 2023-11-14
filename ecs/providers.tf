terraform {
  # required_version = "~> 1.2.8"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
  backend "s3" {
    bucket  = "sarvm-terraform-remote-s3-backend"
    # key     = "UAT/terraform.tfstate"
    key = "UAT/modules/ECS/terraform.tfstate"
    region  = "ap-south-1"
    profile = "sarvm"
    dynamodb_table = "sarvm-terraform-ecs-state-lock"
    encrypt = true
  }
}
provider "aws" {
  profile = var.aws_profile
  region  = var.aws_region
  # access_key = var.aws_access_key
  # secret_key = var.aws_secret_key
}

provider "local" {
  
}
