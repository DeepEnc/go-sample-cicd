variable "bucket_name" {
    type = string
}

variable "kubernetes_version" {
  description = "kubernetes version"
}

variable "vpc_cidr" {
  description = "default CIDR range of the VPC"
}
variable "region" {
  description = "aws region"
}
