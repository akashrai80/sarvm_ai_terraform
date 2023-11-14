resource "aws_autoscaling_group" "this" {
  name                          = var.asg_name
  launch_configuration          = var.launch_configuration_name
  min_size                      = var.minimum_size
  max_size                      = var.maximum_size
  desired_capacity              = var.desired_size
  availability_zones            = var.azs
  capacity_rebalance            = false
  default_cooldown              = 180
  default_instance_warmup       = 0
  enabled_metrics               = []
  health_check_grace_period     = 30
  health_check_type             = "EC2"
  load_balancers                = []
  max_instance_lifetime         = 0
  force_delete                  = null
  force_delete_warm_pool        = null
  wait_for_capacity_timeout     = null
  tag {
    key                         = "AmazonECSManaged"
    propagate_at_launch         = true
    value                       = ""
  }
  tag {
    key                         = "Description"
    propagate_at_launch         = true
    value                       = "This instance is the part of the Auto Scaling group which was created through ECS Console"
  }
  tag {
    key                         = "Environment"
    propagate_at_launch         = true
    value                       = "staging"
  }
  tag {
    key                         = "Name"
    propagate_at_launch         = true
    value                       = "ECS Instance - EC2ContainerService-sarvm-apps"
  }
  lifecycle {
    create_before_destroy       = true
  }
}