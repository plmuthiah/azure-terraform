variable "company_code" {
  type        = string
  default     = "mp"
  description = "The abbreviated code for the company."
}

variable "base_tags" {
  type = map
  default = {
    service           = "network"
    environment       = "prod"
    iacversion        = "1.0"   
    creator           = "Muthiah Palaniappan"
  }
}

variable "region_code" {
  type        = map
  description = "Short code used to identify the Azure region."
  default = {    
    "uksouth"     = "uks"
    "ukwest"      = "ukw"
  }
}

variable "regions" {
  type = map
  default = {
    primaryregion   = "uksouth"
    secondaryregion = "ukwest"
  }
}