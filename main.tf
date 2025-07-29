provider "aws" {
  # Configuration options
  # profile = var.profile_name
  region = "us-east-1"
}

resource "aws_s3_bucket" "example" {
  bucket = "solomon-s3-test-bucket-12345"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

# module "lambda2" {
#   source  = "tk-registry.sghd.io/aws/lambda2/aws"
#   version = "v7.2.3"
#   # insert required variables here 
# }

output "aws_s3_bucket_domain_name" {
  value = aws_s3_bucket.example.bucket_domain_name
}
