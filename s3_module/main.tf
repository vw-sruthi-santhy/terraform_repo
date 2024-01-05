resource "aws_s3_bucket" "my_bucket" {
  bucket = var.bucket_name
  acl    = var.acl

  versioning {
    enabled = var.versioning_enabled
  }

  logging {
    target_bucket = var.log_bucket
    target_prefix = var.log_prefix
  }

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = var.sse_algorithm
      }
    }
  }
}

resource "aws_s3_bucket" "my_bucket_expire" {
  bucket = var.expire_prefix
  acl    = "private"

  lifecycle_rule {
    id     = "expire_rule"
    enabled = true
    prefix = var.expire_prefix

    expiration {
      days = var.expire_days
    }
  }
}
