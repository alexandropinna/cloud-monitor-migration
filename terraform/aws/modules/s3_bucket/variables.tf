variable "kms_key_arn" {
  type        = string
  description = "The ARN of the KMS key for server-side encryption."
}

variable "logging_bucket_name" {
  type        = string
  description = "The name of the target logging bucket."
}
