variable "ami_id" {
  description = "The AMI ID for the EC2 instance"
  type        = string
  default     = "ami-0c55b159cbfafe1f0"
}
variable "instance_type" {
  description = "The instance type for the EC2 instance"
  type        = string
  default     = "c7i.large"
}       

variable "instance_name" {
  description = "The name for the EC2 instance"
  type        = string
  default     = "jenkins_server"
}

variable "subnet_id" {
  description = "The subnet ID for the EC2 instance"
  type        = string
  default     = "subnet-0eb77a062a86d2156"
}

variable "project_sg" {
  description = "The security group ID for the EC2 instance"
  type        = string
  default     = "sg-0ffd1a12683b9c69d"
}