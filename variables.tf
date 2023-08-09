variable "file_path" {
  description = "Path to the source file to be uploaded to S3"
  type        = string
}

variable "file_key" {
  description = "Key under which the file will be stored in S3"
  type        = string
}

variable "bucket_name" {
  description = "Name of the S3 bucket"
  type        = string
}

variable "file_assets" {
  description = "Map of file keys to their respective paths"
  type        = map(string)
}

