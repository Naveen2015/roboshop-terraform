terraform {
  backend "s3" {
    bucket = "terraform-naveen"
    key    = "roboshop/dev/terraform.tfstate"
    region = "us-east-1"
  }
}