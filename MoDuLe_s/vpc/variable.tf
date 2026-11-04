
variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "subnet_1_cidr" {
  description = "The CIDR block for the first subnet"
  type        = string
  default     = "10.0.1.0/24"
}

variable "subnet_2_cidr" {
  description = "The CIDR block for the second subnet"
  type        = string
  default     = "10.0.2.0/24"
}
 
variable "route_table_cidr" {
  description = "The CIDR block for the route table"
  type        = string
  default     = "0.0.0.0/0"
}

variable "internet_gateway_name" {
  description = "The name of the internet gateway"
  type        = string
  default     = "project_igw"
}
