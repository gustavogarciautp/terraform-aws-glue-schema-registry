output "registry_arn" {
  description = "Glue registry ARN"
  value       = aws_glue_registry.this.arn
}