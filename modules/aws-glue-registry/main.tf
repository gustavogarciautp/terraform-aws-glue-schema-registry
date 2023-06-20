terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }

  required_version = ">= 1.0"
}

# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/glue_registry
resource "aws_glue_registry" "this" {
  registry_name = var.registry_name
  description   = var.registry_description
}
