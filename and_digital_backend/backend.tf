resource "aws_s3_bucket" "terraform_state" {
  bucket = "and-digital-tf-state"
  # Dynamodb for state locking as its going to be shared

  # Make cleanup for this exercise easier
   force_destroy = true

  # Enable versioning so we can see the full revision history of state files
  versioning {
    enabled = true
  }
  # Enable server-side encryption by default
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
}