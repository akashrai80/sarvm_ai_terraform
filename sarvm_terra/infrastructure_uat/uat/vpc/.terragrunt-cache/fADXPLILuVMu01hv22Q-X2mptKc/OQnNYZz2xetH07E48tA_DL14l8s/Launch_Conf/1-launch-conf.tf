# resource "aws_launch_configuration" "as_conf" {
#   name                              = "EC2ContainerService-sarvm-apps-EcsInstanceLc-oQS0uPlFYFxk"
#   image_id                          = "ami-04b412847162495a3"
#   associate_public_ip_address       = false
#   ebs_optimized                     = false
#   iam_instance_profile              = "arn:aws:iam::326457620362:instance-profile/ecsInstanceRole"
#   key_name                          = "sarvmuat"
#   instance_type                     = "t3.medium"
#   security_groups                   = ["sg-0894995873d7b2bfc"]
#   vpc_classic_link_security_groups  = []
#   user_data                         = base64encode(
#     <<-EOT
#     #!/bin/bash
# echo ECS_CLUSTER=sarvm-apps >> /etc/ecs/ecs.config;echo ECS_BACKEND_HOST= >> /etc/ecs/ecs.config;
#   EOT
#   )
#   root_block_device {
#     delete_on_termination   = false
#     encrypted               = false
#     iops                    = 0
#     throughput              = 0
#     volume_size             = 50
#     volume_type             = "gp2"
#   }


#   lifecycle {
#     create_before_destroy = true
#   }
# }