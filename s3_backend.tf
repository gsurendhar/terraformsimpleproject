
# s3 backend configure
terraform {
  backend "s3" {
    bucket = var.mybucket1
    key    = "statefile/terraform.tfstate"
    region = var.region

    depends_on = [
      aws_s3_bucket.Mybucket1
    ]
  }
}





resource "aws_s3_bucket" "Mybucket1" {
  bucket = var.mybucket1
}