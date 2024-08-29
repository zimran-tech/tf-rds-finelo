output "host" {
  value = aws_db_instance.rds.endpoint
}

output "username" {
  value = aws_db_instance.rds.username
}

output "db_name" {
  value = aws_db_instance.rds.db_name
}