/* This is a multi-line comment. This is a multi-line comment.
This is a multi-line comment. This is a multi-line comment. This
is a multi-line comment. This is a multi-line comment. */

provider "aws" {
  access_key = "abc123"
  secret_key = "abc123"
  region     = "us-east-1"
}
# This is a single-line comment.
resource "aws_instance" "base" {
  ami           = "ami-0d729a60"
  instance_type = "t2.micro"
}
