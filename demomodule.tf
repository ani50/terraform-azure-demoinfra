provider "azurerm" {
  version = "~> 1.0"
}
variable "prefix" {
  default = "tfvmex"
}
variable "subscriptionId" {}
variable "clientId" {}
variable "clientSecret" {}
variable "tenantId" {}
variable "region" {}

module "demoinfra" {
    source = "git::https://github.com/ani50/terraform-azure-variable.git"
    prefix = "${var.prefix}"
    subscriptionId = "${var.subscriptionId}"
    clientId = "${var.clientId}"
    clientSecret = "${var.clientSecret}"
    tenantId = "${var.tenantId}"
    region = "${var.region}"

}

