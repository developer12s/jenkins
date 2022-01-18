provider "aws"{
  region="ap-northeast-1"
}
resource "aws_s3_bucket" "_ab" {
  bucket =var.name
  tags = {
    Environment = var.env
  }
}
