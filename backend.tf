
provider "azurerm" {
  features {
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
  }
  subscription_id = "a0d0daf4-8e05-41ba-add7-e0856bac7f78"
  tenant_id       = "0cb6f4c9-1ea8-4af8-9982-6a357695bb22"
  client_id       = "9ed9ec93-681e-47d4-b5dd-cd2a2fcba037"
  client_secret   = "RLh8Q~7nhdXgJQHzm8RQqcfvgh3Yfej83JJg7djY"
}

terraform {
  backend "azurerm" {
    resource_group_name  = "rg-remote-state-tf"
    storage_account_name = "azuredevopsremotestatetf"
    container_name       = "azuredevopsremotestatetf"
    key                  = "QwYAGbI7EBewvVxByo4dsnyrVitkKPdZP/4hiUD876WjjEcFt8nlNz0bExK67HWncDtkzaPtqI8s+AStPz7dIQ=="
  }
}


