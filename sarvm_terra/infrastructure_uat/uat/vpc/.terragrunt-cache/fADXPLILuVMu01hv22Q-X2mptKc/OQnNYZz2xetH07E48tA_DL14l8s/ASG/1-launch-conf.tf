# data "aws_ami" "ubuntu" {
#   most_recent = true

#   filter {
#     name   = "name"
#     values = ["ubuntu/images/hvm-ssd/ubuntu-trusty-14.04-amd64-server-*"]
#   }

#   filter {
#     name   = "virtualization-type"
#     values = ["hvm"]
#   }

#   owners = ["099720109477"] # Canonical
# }

# resource "aws_launch_configuration" "as_conf" {
#   name_prefix   = "EC2ContainerService-sarvm-apps-EcsInstanceLc-oQS0uPlFYFxk"
#   image_id      = "ami-04b412847162495a3"
#   instance_type = "t3.medium"
#   key_name = "sarvmuat"


#   lifecycle {
#     create_before_destroy = true
#   }
# }