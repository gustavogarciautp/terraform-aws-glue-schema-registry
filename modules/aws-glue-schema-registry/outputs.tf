output "registry_arn" {
  description = "Glue registry ARN"
  value       = module.aws_glue_registry.registry_arn
}

output "schemas_details" {
  description = <<EOT
      schema_name : "Nombre del esquema"
      arn : "ARN del esquema"
      compatibility : "El modo de compatibilidad del esquema. Los valores válidos son NONE, DISABLED, BACKWARD, BACKWARD_ALL, FORWARD, FORWARD_ALL, FULL y FULL_ALL"
      latest_schema_version : "La última versión del esquema Glue"
      next_schema_version   = "La siguiente versión del esquema Glue"
      schema_checkpoint     = "El número de versión del punto de control (la última vez que se cambió el modo de compatibilidad)"
  EOT
  value = [for schema in module.aws_glue_schema : {
    schema_name           = schema.schema_name
    arn                   = schema.arn
    compatibility         = schema.compatibility
    latest_schema_version = schema.latest_schema_version
    next_schema_version   = schema.next_schema_version
    schema_checkpoint     = schema.schema_checkpoint
  }]
}
