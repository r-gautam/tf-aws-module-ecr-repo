variable "name" {
    type = string
    description = "Name of the repository"
}

variable "region" {
  description = "(Optional) If specified, the AWS region this bucket should reside in. Otherwise, the region used by the callee."
  type        = string
  default     = null
}

variable "mutablity" {
    type = string
    default = "MUTABLE"
    description = "The tag mutability setting for the repository. Must be one of: `MUTABLE` or `IMMUTABLE`"
}

variable "scan" {
    type = bool
    default = true
    description = "Indicates whether images are scanned after being pushed to the repository (`true`) or not scanned (`false`)"
}

variable "encryption_type" {
  type = string
  description = "The encryption type to use for the repository. Valid values are AES256 or KMS"
  default = "AES256"
}

variable "kms_key" {
  type = string
  description = "The ARN of the KMS key to use when encryption_type is KMS. If not specified when encryption_type is KMS, uses a new KMS key. Otherwise, uses the default AWS managed key for ECR." 
}

variable "tags" {
  description = "Custom tags for ECR Repo"
  type        = map
  default     = null
}


