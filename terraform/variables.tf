variable "table_name" {
  description = "Name of the DynamoDB table"
  type        = string
  default     = "dynamo-test"
}

variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "ap-northeast-2"
}

variable "hash_key" {
  description = "Partition key (hash key) attribute name"
  type        = string
  default     = "id"
}

variable "hash_key_type" {
  description = "Partition key type: S (String), N (Number), B (Binary)"
  type        = string
  default     = "S"
}

variable "range_key" {
  description = "Sort key (range key) attribute name. Empty string to omit."
  type        = string
  default     = "qwer"
}

variable "range_key_type" {
  description = "Sort key type: S (String), N (Number), B (Binary)"
  type        = string
  default     = "S"
}

variable "billing_mode" {
  description = "DynamoDB billing mode: PAY_PER_REQUEST or PROVISIONED"
  type        = string
  default     = "PAY_PER_REQUEST"
}

variable "read_capacity" {
  description = "Read capacity units (only for PROVISIONED billing mode)"
  type        = number
  default     = 5
}

variable "write_capacity" {
  description = "Write capacity units (only for PROVISIONED billing mode)"
  type        = number
  default     = 5
}

variable "table_class" {
  description = "Table class: STANDARD or STANDARD_INFREQUENT_ACCESS"
  type        = string
  default     = "STANDARD"
}

variable "ttl_enabled" {
  description = "Enable TTL (Time to Live) for automatic item expiration"
  type        = bool
  default     = false
}

variable "ttl_attribute" {
  description = "Attribute name for TTL (must be a Number in epoch seconds)"
  type        = string
  default     = "expires_at"
}

variable "pitr_enabled" {
  description = "Enable Point-in-Time Recovery (35-day restore window)"
  type        = bool
  default     = true
}

variable "stream_enabled" {
  description = "Enable DynamoDB Streams for change data capture"
  type        = bool
  default     = false
}

variable "stream_view_type" {
  description = "Stream view type: NEW_IMAGE, OLD_IMAGE, NEW_AND_OLD_IMAGES, KEYS_ONLY"
  type        = string
  default     = "NEW_AND_OLD_IMAGES"
}

variable "kms_encryption" {
  description = "Use AWS managed KMS key for encryption (true) or AWS-owned AES-256 (false)"
  type        = bool
  default     = false
}

variable "gsi_enabled" {
  description = "Add a Global Secondary Index"
  type        = bool
  default     = false
}

variable "gsi_name" {
  description = "Name of the GSI"
  type        = string
  default     = "gsi-by-type"
}

variable "gsi_hash_key" {
  description = "GSI partition key attribute name"
  type        = string
  default     = "type"
}

variable "gsi_hash_key_type" {
  description = "GSI partition key type: S, N, B"
  type        = string
  default     = "S"
}

variable "auto_scaling" {
  description = "Enable Auto Scaling for provisioned capacity (PROVISIONED billing only)"
  type        = bool
  default     = false
}
