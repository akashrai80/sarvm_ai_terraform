terraform {
    source                      = "../../../uat_infra_modules//ASG"
}

include "root" {
    path                        = find_in_parent_folders()
}

inputs = {
    asg_name                    = "EC2ContainerService-sarvm-apps-EcsInstanceAsg-1KJHX227SL8BK"
    launch_configuration_name   = "EC2ContainerService-sarvm-apps-EcsInstanceLc-oQS0uPlFYFxk"
    minimum_size                = 0
    maximum_size                = 4
    desired_size                = 4
    azs                         = ["ap-south-1a"]
}