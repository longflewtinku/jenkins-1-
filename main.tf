# This is the aws provider
provider "aws" {
 	region = "ap-south-1"
    access_key = "AKIA4QAV3ITD4E6ALP6C"
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
