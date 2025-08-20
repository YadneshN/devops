# Configure the AWS Provider
provider "aws" {
  region = "ap-south-1"  # Specify your preferred AWS region
}

# Create an S3 Bucket
resource "aws_s3_bucket" "my_bucket" {
  bucket = "yadnesh-4567"  # Change to a globally unique bucket name
  acl    = "private"  # Set the bucket access control, options: private, public-read, etc.
}

# Optional: Output the bucket name
output "bucket_name" {
  value = aws_s3_bucket.my_bucket.bucket
}
