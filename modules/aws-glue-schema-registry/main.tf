module "aws_glue_schema" {
  for_each = {
    for index, schema in var.schemas :
    schema.schema_name => schema
  }
  source                 = "../aws-glue-schema"
  schema_name            = each.value.schema_name
  schema_description     = each.value.schema_description
  aws_glue_registry_arn  = module.aws_glue_registry.registry_arn
  compatibility          = each.value.compatibility
  avro_schema_definition = each.value.avro_schema_definition
}

module "aws_glue_registry" {
  source               = "../aws-glue-registry"
  registry_name        = var.registry_name
  registry_description = var.registry_description
}
