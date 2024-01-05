# Output the endpoint address for reference..
output "rds_endpoint_address" {
  value = aws_db_instance.rds_instance.endpoint
}