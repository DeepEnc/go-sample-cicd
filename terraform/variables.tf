# variable "bucket_name" {
#     type = string
#     default = "terraform-state-file-dev-1.0"
# }

variable "kubernetes_version" {
  default     = 1.27
  description = "kubernetes version"
}

variable "vpc_cidr" {
  default     = "10.0.0.0/16"
  description = "default CIDR range of the VPC"
}
variable "region" {
  default = "us-east-1"
  description = "aws region"
}
