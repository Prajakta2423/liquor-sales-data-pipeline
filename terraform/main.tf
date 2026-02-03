provider "aws" {
  region = "ap-south-1"
}

# -------------------------
# S3 RAW BUCKET
# -------------------------
resource "aws_s3_bucket" "raw_bucket" {
  bucket        = var.raw_bucket_name
  force_destroy = true
}

# -------------------------
# S3 CLEAN BUCKET
# -------------------------
resource "aws_s3_bucket" "clean_bucket" {
  bucket        = var.clean_bucket_name
  force_destroy = true
}

# -------------------------
# IAM ROLE FOR GLUE
# -------------------------
resource "aws_iam_role" "glue_role" {
  name = var.glue_role_name

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Effect = "Allow"
      Principal = {
        Service = "glue.amazonaws.com"
      }
      Action = "sts:AssumeRole"
    }]
  })
}

# -------------------------
# ATTACH GLUE POLICY
# -------------------------
resource "aws_iam_role_policy_attachment" "glue_policy" {
  role       = aws_iam_role.glue_role.name
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSGlueServiceRole"
}
