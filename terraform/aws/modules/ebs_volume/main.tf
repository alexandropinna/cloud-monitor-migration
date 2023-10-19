resource "aws_ebs_volume" "prometheus_volume" {
  availability_zone = var.availability_zone
  size              = var.volume_size
  type              = var.volume_type
  encrypted         = var.encrypted
  kms_key_id        = var.kms_key_arn
  tags              = var.tags
}
