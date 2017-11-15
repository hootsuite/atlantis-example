#Provider
  provider "aws" {

  }

#Network
  resource "aws_vpc" "main" {
    cidr_block           = "10.2.0.0/16"

    tags {
      Name        = "VPC-test"
      Environment = "Dev-test"
    }
  }