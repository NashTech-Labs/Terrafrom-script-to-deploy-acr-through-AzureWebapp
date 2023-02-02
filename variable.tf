variable "rg_name" {
	type = string
}

variable "location" {
	type = string
}

variable "app_plan_name" {
  type        = string
  description = "Azure App Service Plan Name"
}

variable "web_app_name" {
  type        = string
  description = "Azure Web App Name"
}
variable "registry_name" {
  type        = string
  description = "Azure Web App Name"
}

variable "tag_name" {
  type        = string
  description = "Azure Web App Name"
#  default= "latest"
}

variable "acr_password" {
  type        = string
  description = "Acr password"
#  default= "latest"
}

variable "acr_server" {
  type        = string
  description = "Acr password"
#  default= "latest"
}
