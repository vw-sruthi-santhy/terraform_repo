variable "bucket_name" {
  description = "The name of the S3 bucket."
  type        = string
}

variable "acl" {
  description = "The canned ACL to apply to the S3 bucket."
  type        = string
  default     = "private"
}

variable "versioning_enabled" {
  description = "Enable versioning for the S3 bucket."
  type        = bool
  default     = false
}

variable "log_bucket" {
  description = "The name of the S3 bucket for server access logs."
  type        = string
}

variable "log_prefix" {
  description = "The prefix for server access logs in the log bucket."
  type        = string
  default     = "logs/"
}

variable "sse_algorithm" {
  description = "The server-side encryption algorithm."
  type        = string
  default     = "AES256"
}

variable "expire_prefix" {
  description = "The prefix for objects to be expired."
  type        = string
  default     = "custom-prefix/"
}

variable "expire_days" {
  description = "The number of days after which objects should be expired."
  type        = number
  default     = 90
}

