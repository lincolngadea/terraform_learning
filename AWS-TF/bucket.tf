resource "aws_s3_bucket" "init_bucket_lg" {
  bucket = "bkt-01-lg"

  tags = {
    Name        = "S3 Learning Bucket LG"
    Environment = "Dev"
  }
}