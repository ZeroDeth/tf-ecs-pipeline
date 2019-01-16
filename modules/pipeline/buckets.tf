#S3 code bucket

resource "random_id" "source_bucket" {
  byte_length = 2
}

resource "aws_s3_bucket" "source" {
  bucket        = "${var.cluster_name}-${random_id.source_bucket.dec}"
  acl           = "private"
  force_destroy = true

  tags {
    Name = "source bucket"
  }
}
