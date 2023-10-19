output "eks_encryption_key_arn" {
  value = aws_kms_key.eks_encryption_key.arn
  description = "The ARN of the KMS key for EKS encryption."
}
