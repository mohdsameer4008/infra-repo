variable "ami_id" {
    description = "The AMI ID to use for the EC2 instance"
    type        = string
    default     = "ami-0c55b159cbfafe1f0" # Example AMI ID, replace with your desired AMI
  
}

variable "instance_type" {
    description = "The instance type for the EC2 instance"
    type        = string
    default     = "c7i.large" # Example instance type, replace with your desired type
}



variable "instance_name" {
    description = "The name for the EC2 instance"
    type        = string
    default     = "cluster_server" # Example instance name, replace with your desired name
}