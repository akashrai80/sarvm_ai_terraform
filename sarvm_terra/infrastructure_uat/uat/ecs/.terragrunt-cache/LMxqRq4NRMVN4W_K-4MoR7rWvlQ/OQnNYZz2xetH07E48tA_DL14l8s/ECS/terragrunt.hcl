terraform {
    source                      = "../../../uat_infra_modules//ECS"
}

include "root" {
    path                        = find_in_parent_folders()
}

inputs = {
    ecs_cluster_name            = "sarvm-apps"
    tags                        = {
        Name                    = "stg-sarvm-apps"
    }
}