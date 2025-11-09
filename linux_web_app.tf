resource "azurerm_linux_web_app" "webapp" {
  name                = "${var.prefix}-webapp-${random_string.suffix.result}"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  service_plan_id     = azurerm_service_plan.plan.id

  site_config {
    application_stack {
      docker_image_name = var.container_image
    }
    always_on = false
  }

  app_settings = {
    WEBSITES_PORT = "80"
  }
}
