resource "aws_kms_key" "eks_encryption_key" {
  description             = "KMS key for encrypting EKS secrets"
  deletion_window_in_days = 7
  enable_key_rotation     = true
}
