output "raw_bucket" {
  value = aws_s3_bucket.raw_bucket.bucket
}

output "clean_bucket" {
  value = aws_s3_bucket.clean_bucket.bucket
}
