output "id" {
  description = "The db parameter group name."
  value       = aws_db_parameter_group.this.id
}

output "arn" {
  description = "The ARN of the db parameter group."
  value       = aws_db_parameter_group.this.arn
}