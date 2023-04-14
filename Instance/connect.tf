terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "= 3.33.0"
    }
  }
}

provider "aws" {
    #tenant/marco
    max_retries = 1
    access_key = "133786a45ffa4d3bb9ecf0e027ea2e49"
    secret_key = "122dc5fee80744bc805a73bb69052243"
    endpoints {
        ec2 = "https://10.16.145.176/api/v2/ec2"
        }
    insecure = "true"
    skip_metadata_api_check = true
    skip_credentials_validation = true
    skip_requesting_account_id = true
    region = "us-east-1"
  }
  variable "keyname" {
    default = "08nov"
  }
  variable "ami" {
    default = "ami-aebcc1b5aa4d42c2bd7d40548bcc295b"
  }
  variable "vpc" {
    default = "vpc-98d2b6561bfc46fc9135d4773644e30d"
  }
  variable "subnet" {
    default = "subnet-75a343f9fb234c8785c21f853744b94c"
  }
