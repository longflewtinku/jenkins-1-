# This is the aws provider
provider "aws" {
 	region = "ap-south-1"
    access_key = "AKIA4QAV3ITDZNT3VN4M"
    secret_key = "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"
}


# This is the s3 bucket resource
resource "aws_s3_bucket" "first_bucket"  {
    bucket = "longflowe2"
    tags = {
            Name        = "My bucket from tf"
            Environment = "Dev1"
    }
}
