terraform {
    source = "../../../uat_infra_modules//Launch_Conf"
}

include "root" {
    path = find_in_parent_folders()
}

inputs = {
}