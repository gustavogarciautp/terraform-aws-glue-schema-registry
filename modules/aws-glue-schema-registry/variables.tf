
variable "registry_name" {
  type        = string
  description = "Nombre del AWS Glue Registry"
}

variable "registry_description" {
  type        = string
  description = "Descripción del AWS Glue Registry"
}

variable "schemas" {
  type = list(object({
    schema_name            = string
    schema_description     = string
    compatibility          = string
    avro_schema_definition = string
  }))

  description = <<EOT
      schema_name : "Nombre del esquema"
      schema_description : "Descripción del esquema"
      compatibility : "El modo de compatibilidad del esquema. Los valores válidos son NONE, DISABLED, BACKWARD, BACKWARD_ALL, FORWARD, FORWARD_ALL, FULL y FULL_ALL"
      avro_schema_definition : "La definición del esquema AVRO"
  EOT

  validation {
    condition = alltrue([
      for schema in var.schemas : contains(["NONE", "DISABLED", "BACKWARD", "BACKWARD_ALL", "FORWARD", "FORWARD_ALL", "FULL", "FULL_ALL"], schema.compatibility)
    ])
    error_message = "Las opciones soportadas son NONE, DISABLED, BACKWARD, BACKWARD_ALL, FORWARD, FORWARD_ALL, FULL, y FULL_ALL"
  }

  default = []
}
