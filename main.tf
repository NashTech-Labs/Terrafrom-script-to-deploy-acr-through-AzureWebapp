resource "azurerm_resource_group" "rg" {
  name = var.rg_name
  location = var.location
}
# App Plan
resource "azurerm_app_service_plan" "service-plan" {
  name = var.app_plan_name
  location = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  kind = "Linux"
  reserved = true  

  sku {
    tier = "Standard"
    size = "S1"
  }  
}


# web App
resource "azurerm_app_service" "app-service" {
  name = var.web_app_name
  location = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  app_service_plan_id = azurerm_app_service_plan.service-plan.id
  
  app_settings = {  
    WEBSITES_ENABLE_APP_SERVICE_STORAGE = false

    DOCKER_REGISTRY_SERVER_URL      = "https://${var.acr_server}"
    DOCKER_REGISTRY_SERVER_USERNAME = "${var.registry_name}"
    DOCKER_REGISTRY_SERVER_PASSWORD = "${var.acr_password}"
 }


# here you insert the registry name that you want to use.
  site_config {
    linux_fx_version = "DOCKER|${var.acr_server}/${var.registry_name}:${var.tag_name}"
    always_on        = "true"
  }
  

  identity {
    type = "SystemAssigned"
  }
  }
