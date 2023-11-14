remote_state{
    backend             = "s3"
    generate            = {
        path            = "state.tf"
        if_exists       = "overwrite_terragrunt"
    }

    config = {
        profile         = "sarvm"
        # role_arn      = "arn:aws:iam::326457620362:role/Terragrunt_bucket_access"
        bucket          = "sarvm-terraform-remote-backend"
        key             = "${path_relative_to_include()}/terraform.tfstate"
        region          = "ap-south-1"
        encrypt         = true
        dynamodb_table  = "sarvm-terraform-state-lock"
    }
}

generate "provider" {
    path                = "provider.tf"
    if_exists           = "overwrite_terragrunt"
    contents = <<EOF
    provider "aws" {
        region = "ap-south-1"
        profile = "sarvm"
    }
    EOF
}