variable "asg_name" {
    type = string
    default = "EC2ContainerService-sarvm-apps-EcsInstanceAsg-1KJHX227SL8BK"
}

variable "launch_configuration_name" {
    type = string
    default = "EC2ContainerService-sarvm-apps-EcsInstanceLc-oQS0uPlFYFxk"
}

variable "minimum_size" {
    type = number
    default = 0
}

variable "maximum_size" {
    type = number
    default = 4
}

variable "desired_size" {
    type = number
    default = 4
}

variable "azs" {
    type = list(string)
    default = [ "ap-south-1a" ]
}

variable "tags" {
    type = list(map(string))
    default = [ {
        key                         = "AmazonECSManaged"
        propagate_at_launch         = true
        value                       = ""
      },
      {
        key                         = "Description"
        propagate_at_launch         = true
        value                       = "This instance is the part of the Auto Scaling group which was created through ECS Console"
      },
      {
        key                         = "Environment"
        propagate_at_launch         = true
        value                       = "staging"
      },
      {
        key                         = "Name"
        propagate_at_launch         = true
        value                       = "ECS Instance - EC2ContainerService-sarvm-apps"
      }
    ]
  
}