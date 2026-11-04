variable "security_group_name" {
  description = "The name of the security group"
  type        = string
  default     = "my_sameer_group"
}

variable "vpc_id" {
  description = "The ID of the VPC"
  type        = string
  default     = "vpc-02201bd6537744df9"
}

variable "ssh_port" {
  description = "The port for SSH access"
  type        = number
  default     = 22
}
variable "http_port" {
  description = "The port for HTTP access"
  type        = number
  default     = 80
}
variable "ssh_cidr" {
  description = "The CIDR block for SSH access"
  type        = string
  default     = "0.0.0.0/0"
}
variable "http_cidr" {
  description = "The CIDR block for HTTP access"
  type        = string
  default     = "0.0.0.0/0"
}

