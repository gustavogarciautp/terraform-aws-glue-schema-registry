terragrunt_version_constraint = ">= v0.36.0"

generate "provider" {
  path      = "provider.tf"
  if_exists = "overwrite"
  contents  = <<EOF

provider "aws" {
  region     = "us-east-2"
}
EOF
}

terraform {
  source = "../../modules//aws-glue-schema-registry"
}

inputs = {
  registry_name        = "Registry_Test"
  registry_description = "Description Terraform test"

  schemas = [
    {
      schema_name            = "Schema1"
      schema_description     = "Description Schema 1"
      compatibility          = "BACKWARD_ALL"
      avro_schema_definition = file("schemas/Schema1.json")
    },
    {
      schema_name            = "Schema2"
      schema_description     = "Description Schema 2"
      compatibility          = "BACKWARD"
      avro_schema_definition = file("schemas/Schema2.json")
    }
  ]
}
