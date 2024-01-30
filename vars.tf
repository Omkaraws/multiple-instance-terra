# Creating a Variable for ami of type map


variable "ec2_ami" {
  type = map

  default = {
    us-east-2 = "ami-0416962131234133f"
    us-west-1 = "ami-006fce872b320923e"
  }
}

# Creating a Variable for region

variable "region" {
  default = us-east-2
}


# Creating a Variable for instance_type
variable "instance_type" {    
  type = string
}
