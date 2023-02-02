## Outputs
output "app_service_name" {
  value = "${azurerm_app_service.app-service.name}"
}
output "app_service_default_hostname" {
  value = "https://${azurerm_app_service.app-service.default_site_hostname}"
}

output "registry_name" {
  value = "${var.registry_name}"
}
