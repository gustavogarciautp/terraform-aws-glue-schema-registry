output "arn" {
 value = aws_glue_schema.this.arn
}

output "schema_name" {
 value = aws_glue_schema.this.schema_name
}

output "compatibility" {
 value = aws_glue_schema.this.compatibility
}

output "latest_schema_version" {
 value = aws_glue_schema.this.latest_schema_version
}

output "next_schema_version" {
 value = aws_glue_schema.this.next_schema_version
}

output "schema_checkpoint" {
 value = aws_glue_schema.this.schema_checkpoint
}