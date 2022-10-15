provider "aws" {
    access_key = "AKIA4QAV3ITD4E6ALP6C"
    secret_key = "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"
}


resource "aws_s3_bucket" "first_bucket"  {
    bucket = "longflowe2"
    tags = {
            Name        = "My bucket from tf"
            Environment = "Dev1"
    }
}
