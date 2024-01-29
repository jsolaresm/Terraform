resource "aws_s3_bucket" "example" {
  count = 6
  bucket = "proveedores-${random_string.sufijo[count.index].id}"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
    Creator     = "jsolares"
  }
}

resource "random_string" "sufijo" {
  count            = 6
  length           = 8
  special          = false
  upper            = false
  numeric          = false
}