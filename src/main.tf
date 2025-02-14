# Terraform configuration for Azure cloud infrastructure with PostgreSQL, Redis, Kafka, RabbitMQ on Docker

/* main.tf */
provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id
}

# Resource Group
resource "azurerm_resource_group" "rg" {
  name     = "my_azure_infra_rg"
  location = "East US"
}
