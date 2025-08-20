variable "image_name" {
  description = "Docker image name with tag"
  type        = string
  default     = "lmatrangolo/flutter-custom:v1"
}

variable "container_name" {
  description = "Name for the Docker container"
  type        = string
  default     = "flutter"
}

variable "network_name" {
  description = "Docker network name"
  type        = string
  default     = "terraform_network"
}

variable "internal_port" {
  description = "Internal port exposed by the container"
  type        = number
  default     = 8080
}

variable "external_port" {
  description = "External port mapped on host"
  type        = number
  default     = 8080
}
