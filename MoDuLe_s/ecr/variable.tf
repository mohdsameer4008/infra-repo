variable "image_tag_mutability" {
  description = "The image tag mutability for the ECR repository"
  type        = string
  default     = "MUTABLE"
  
}

variable "scan_on_push" {
  description = "Whether to enable image scanning on push for the ECR repository"
  type        = bool
  default     = true
}
