resource "azurerm_key_vault" "mp-keyvault2" {
  name                = join("-", [lower(var.company_code), replace((lower(var.base_tags["service"])), " ", "-"), replace((lower(var.base_tags["environment"])), " ", "-"), lookup(var.region_code, var.regions.primaryregion), "2"])
  location            = var.regions.primaryregion
  resource_group_name = azurerm_resource_group.mp-azure-keyvault-2.name
  tenant_id           = data.azurerm_client_config.current.tenant_id
  sku_name            = "standard"
  access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = data.azurerm_client_config.current.object_id
    key_permissions = [
      "get", "list", "create", "delete", "update",
    ]
    secret_permissions = [
      "get", "list", "set", "delete",
    ]
  }
}