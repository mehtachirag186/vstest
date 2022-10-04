
provider "azurerm" {
  features {
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
  }
}

terraform {
  backend "azurerm" {
    resource_group_name  = "rg-remote-state-tf"
    storage_account_name = "azuredevopsremotestatetf"
    container_name       = "azuredevopsremotestatetf"
    key                  = "QwYAGbI7EBewvVxByo4dsnyrVitkKPdZP/4hiUD876WjjEcFt8nlNz0bExK67HWncDtkzaPtqI8s+AStPz7dIQ=="
  }
}


