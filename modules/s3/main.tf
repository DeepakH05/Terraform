resource "aws_s3_bucket" "tf_bucket" {
  bucket = var.bucket_name
}

# Enable versioning (important for Terraform state)
resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.tf_bucket.id

  versioning_configuration {
    status = "Enabled"
  }
}

