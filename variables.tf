variable "aws_region" {
    type = string
    default = "us-east-1"
}


variable "bucket_name" {
    type = string
    default = "web-bucket-static"
}

variable "block_public_acls" {
    type = bool
    default = false
}

variable "block_public_policy" {
    type = bool
    default = false
}

variable "ignore_public_acls" {
    type = bool
    default = false
}

variable "restrict_public_buckets" {
    type = bool
    default = false
}

variable "key_source_index" {
    type = string
    default = "index.html"
}

variable "key_source_error" {
    type = string
    default = "error.html"
}