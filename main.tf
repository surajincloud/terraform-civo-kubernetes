# Specify required provider as maintained by civo
terraform {
  required_providers {
    civo = {
      source = "civo/civo"
    }
  }
}