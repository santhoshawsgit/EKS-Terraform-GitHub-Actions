backend "s3" {
  bucket         = "pinco"
  region         = "ap-southeast-1"
  key            = "eks/terraform.tfstate"
  dynamodb_table = "Lock-Files"
  encrypt        = true
}

provider "aws" {
  region = var.aws-region
}
