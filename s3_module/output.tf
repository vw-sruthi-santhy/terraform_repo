output "bucket_id" {
  description = "ID of the created bucket"
  value       = aws_s3_bucket.my_bucket.id
}
