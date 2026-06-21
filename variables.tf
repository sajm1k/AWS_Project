variable "region" {
  type        = string
  description = "AWS working region"
  default     = "eu-central-1"
}

variable "availability_zone" {
  type        = string
  description = "Available zone for subnet"
  default     = "eu-central-1a"
}

variable "vpc_cidr" {
  type        = string
  description = "CIDR block for AWS VPC"
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  type        = string
  description = "CIDR block for public subnet"
  default     = "10.0.1.0/24"
}

variable "private_subnet_cidr" {
  type        = string
  description = "CIDR block for private subnet"
  default     = "10.0.2.0/24"
}
