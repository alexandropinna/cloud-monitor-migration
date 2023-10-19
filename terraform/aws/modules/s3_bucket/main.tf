resource "aws_s3_bucket" "flow_log_bucket" {
  bucket = "vpc-flow-log-bucket"

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm     = "aws:kms"
        kms_master_key_id = var.kms_key_arn
      }
    }
  }

  logging {
    target_bucket = var.logging_bucket_name
    target_prefix = "log/"
  }

}

resource "aws_s3_bucket_versioning" "flow_log_bucket_versioning" {
  bucket = aws_s3_bucket.flow_log_bucket.bucket

  versioning_configuration {
    status = "Enabled"
  }
}


resource "aws_s3_bucket_public_access_block" "flow_log_bucket_public_access_block" {
  bucket = aws_s3_bucket.flow_log_bucket.bucket

  block_public_acls   = true
  block_public_policy = true
  ignore_public_acls  = true 
  restrict_public_buckets = true 
}
