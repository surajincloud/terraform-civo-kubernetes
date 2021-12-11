# Specify required provider as maintained by civo
terraform {
  required_version = ">= 0.13"
  required_providers {
    civo = {
      source = "civo/civo"
      version = ">= 1.0.7"
    }
  }
}