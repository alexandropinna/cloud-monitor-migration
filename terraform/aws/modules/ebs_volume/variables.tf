variable "availability_zone" {
  type        = string
  description = "The AWS Availability Zone where the EBS volume will be created."
}

variable "volume_size" {
  type        = number
  description = "The size of the EBS volume in GiB."
}

variable "volume_type" {
  type        = string
  description = "The type of the EBS volume."
}

variable "encrypted" {
  type        = bool
  description = "Whether or not to encrypt the EBS volume."
}

variable "kms_key_arn" {
  type        = string
  description = "The ARN of the KMS key to be used for encryption."
}

variable "tags" {
  type        = map(string)
  description = "A mapping of tags to assign to the resource."
}
