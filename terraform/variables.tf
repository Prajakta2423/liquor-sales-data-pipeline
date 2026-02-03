variable "region" {
  default = "us-east-1"
}

variable "raw_bucket_name" {
  default = "liquor-sales-analytics-raw-data-db"
}

variable "clean_bucket_name" {
  default = "liquor-sales-cleaned-dataa"
}

variable "glue_job_name" {
  default = "liquor-sales-cleaning-job-copy"
}
