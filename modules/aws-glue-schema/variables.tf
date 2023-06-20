variable "aws_glue_registry_arn" {
  description = "Glue registry ARN"
  type        = string
}

variable "schema_name" {
  type        = string
  description = "Nombre del esquema"
}

variable "schema_description" {
  description = "Descripción del esquema"
  type        = string
}

variable "compatibility" {
  description = "El modo de compatibilidad del esquema. Los valores válidos son NONE, DISABLED, BACKWARD, BACKWARD_ALL, FORWARD, FORWARD_ALL, FULL y FULL_ALL"
  type        = string
}

variable "avro_schema_definition" {
  description = "La definición del esquema AVRO"
  type        = string
}
