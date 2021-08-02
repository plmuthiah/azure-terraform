resource "azurerm_resource_group" "mp-azure-keyvault-2" {
  name     = join("-", [lower(var.company_code), replace((lower(var.base_tags["service"])), " ", "-"), replace((lower(var.base_tags["environment"])), " ", "-"), lookup(var.region_code, var.regions.primaryregion), "rg"])
  location = var.regions.primaryregion
  tags     = var.base_tags
}