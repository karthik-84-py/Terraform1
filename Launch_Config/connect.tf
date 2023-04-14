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
    access_key = "7072d2313a0545ecae82dc71a5a206dd"
    secret_key = "c46e7cda2f6d4dc4946fe7a7e2e76ca4"
    endpoints {
        ec2         = "https://10.16.146.95/api/v2/aws/ec2"
        autoscaling = "https://10.16.146.95/api/v2/aws/autoscaling"
        elb         = "https://10.16.146.95/api/v2/aws/elbv2"
        rds         = "https://10.16.146.95/api/v2/aws/rds"
        iam         = "https://10.16.146.95/api/v2/aws/iam"
        route53     = "https://10.16.146.95/api/v2/aws/route53"
        sts         = "https://10.16.146.95/api/v2/aws/sts"
        }
    insecure = "true"
    skip_metadata_api_check = true
    skip_credentials_validation = true
    skip_requesting_account_id = true
    region = "us-east-1"
  }
  # variable "keyname" {
  #   default = "nov21"
  # }
  variable "ami" {
    default = "ami-6ec6fb933f644e1497dfbafcab5f4731"
  }
  # variable "vpc" {
  #   default = "vpc-2e7960c5b3a54bcd8512623450993d79"
  # }
  # variable "subnet" {
  #   default = "subnet-fec6f26cad694056a9a98e17df9f1c4a"
  # }
 variable "instance_type" {
    default = "t2.micro"
  }
#   variable "security_groups" {
#   default = ["asg-test", "default"]
# }
