terraform {
  backend "azurerm" {
    resource_group_name  = "VenkatGit"
    storage_account_name = "terraformvenkat"
    container_name       = "csvenkat"
    key                  = "dev.terraform.tfstate"
  }
}
module "RG" {
  source   = "./modules/RG" #A
  rgname   = var.rgname     #B
  location = var.location
}
module "SA" {
  source   = "./modules/StorageAccount"
  sname    = var.sname
  rgname   = var.rgname
  location = var.location
}
