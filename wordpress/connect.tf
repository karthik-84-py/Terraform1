provider "aws" {
    #tenant/marco
    max_retries = 1
    access_key = "75253e278a25499d8ecee20af23b0a7d"
    secret_key = "9fba9803fb794381bf9f0e0f099af680"
    endpoints {
        ec2 = "https://172.16.10.80/api/v2/ec2"
        }
    insecure = "true"
    skip_metadata_api_check = true
    skip_credentials_validation = true
    skip_requesting_account_id = true
    region = "us-east-1"
  }
  variable "keyname" {
    default = "winfeb4"
  }
  variable "ami" {
    default = "ami-11206e8c9b94433aa9b9b8d075df63fe"
  }
  variable "vpc" {
    default = "vpc-7d56fefc3c4445a5bf95e9e02b4f2ef8"
  }
  variable "subnet" {
    default = "subnet-f5e0455d88aa4a12b6631c53d6c0343f"
  }
