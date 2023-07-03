
# s3 backend configure
terraform {
  backend "s3" {
    bucket = "terraformcodest09"
    key    = "statefile/terraform.tfstate"
    region = "us-east-1"
  }
}