variable "prefix" {
  description = "Prefix for all resources."
  type        = string
  default     = "demo"
}

variable "location" {
  description = "The Azure region to deploy resources into."
  type        = string
  default     = "Central India"
}


variable "subscription_id" {
  description = "The subscription ID to deploy resources into."
  type        = string
}

variable "container_image" {
  description = "The container image to deploy."
  type        = string
  default     = "nginx:alpine"
}
