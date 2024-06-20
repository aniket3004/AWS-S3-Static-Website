resource "aws_s3_bucket" "Mybucket" {
    bucket = "${var.bucket_name}"
}

resource "aws_s3_bucket_public_access_block" "bucket1" {
  bucket = aws_s3_bucket.Mybucket.id

  block_public_acls =   var.block_public_acls
  block_public_policy = var.block_public_policy
  ignore_public_acls = var.ignore_public_acls
  restrict_public_buckets = var.restrict_public_buckets
}

resource "aws_s3_object" "index" {
  bucket = "${var.bucket_name}"
  key = "${var.key_source_index}"
  source = "${var.key_source_index}"
  content_type = "text/html"
}

resource "aws_s3_object" "error" {
  bucket = "${var.bucket_name}"
  key = "${var.key_source_error}"
  source = "${var.key_source_error}"
  content_type = "text/html"
}


resource "aws_s3_bucket_website_configuration" "bucket1" {
  bucket = aws_s3_bucket.Mybucket.id

  index_document {
    suffix = "index.html"
  }
  
  error_document {
    key = "error.html"
  }
}


resource "aws_s3_bucket_policy" "public_read_access" {
  bucket = aws_s3_bucket.Mybucket.id
  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
	      "Principal": "*",
      "Action": [ "s3:GetObject" ],
      "Resource": [
        "${aws_s3_bucket.Mybucket.arn}",
        "${aws_s3_bucket.Mybucket.arn}/*"
      ]
    }
  ]
}
EOF
  
}