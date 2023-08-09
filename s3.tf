resource "aws_s3_bucket" "tt-bucket" {
  bucket = var.bucket_name
}

resource "aws_s3_object" "tt-bucket-files" {
  bucket = aws_s3_bucket.tt-bucket.id
  key    = each.key
  source = "${path.module}/${each.value}"

  for_each   = var.file_assets
  depends_on = [aws_s3_bucket.tt-bucket]

}
