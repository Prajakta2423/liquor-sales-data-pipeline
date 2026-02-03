variable "raw_bucket_name" {
  description = "Raw data S3 bucket name"
  type        = string
}

variable "clean_bucket_name" {
  description = "Cleaned data S3 bucket name"
  type        = string
}

variable "glue_role_name" {
  description = "Glue IAM role name"
  type        = string
  default     = "AWSGlueServiceRole-liquor"
}
