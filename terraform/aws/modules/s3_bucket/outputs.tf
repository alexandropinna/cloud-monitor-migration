output "bucket_id" {
  value       = aws_s3_bucket.flow_log_bucket.id
  description = "The ID of the S3 bucket."
}

output "public_access_block_id" {
  value       = aws_s3_bucket_public_access_block.flow_log_bucket_public_access_block.id
  description = "The ID of the public access block configuration."
}
