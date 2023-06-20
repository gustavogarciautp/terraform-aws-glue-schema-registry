terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }

  required_version = ">= 1.0"
}

# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/glue_schema
resource "aws_glue_schema" "this" {
  schema_name       = var.schema_name
  description       = var.schema_description
  registry_arn      = var.aws_glue_registry_arn
  data_format       = "AVRO"
  compatibility     = var.compatibility
  schema_definition = var.avro_schema_definition
}