variable "bucket" {
  description = "S3 bucket for storing remote state"
  default     = "adborden-terraform"
  type        = "string"
}

resource "aws_s3_bucket" "backend_state" {
  bucket = "${var.bucket}"

  versioning {
    enabled = true
  }

  lifecycle {
    prevent_destroy = true
  }
}
