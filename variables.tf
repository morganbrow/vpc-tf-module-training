variable "project-name" {
    type = string
    decription = "The prefix nsme of the project"
  
}

variable "vpc_cidr" {
  type = string
  decription = "The VPC CIDR"
}

variable "public_a_cidr" {
  type = string
  decription = "The public subnet CIDR for AZ a"
}

variable "public_b_cidr" {
  type = string
  decription = "The public subnet CIDR for AZ b"
}

variable "private_a_cidr" {
  type = string
  decription = "The private subnet CIDR for AZ a"
}

variable "private_b_cidr" {
  type = string
  decription = "The private subnet CIDR for AZ b"
}