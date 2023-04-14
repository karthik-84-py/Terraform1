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
    access_key = "b4968920a4df47148af793bd9d1b3805"
    secret_key = "081d319fbde44ceda10a0169de431e49"
    endpoints {
        ec2         = "https://172.16.10.1/api/v2/aws/ec2"
        autoscaling = "https://172.16.10.1/api/v2/aws/autoscaling"
        elb         = "https://172.16.10.1/api/v2/aws/elbv2"
        rds         = "https://172.16.10.1/api/v2/aws/rds"
        iam         = "https://172.16.10.1/api/v2/aws/iam"
        route53     = "https://172.16.10.1/api/v2/aws/route53"
        sts         = "https://172.16.10.1/api/v2/aws/sts"
        }
    insecure = "true"
    skip_metadata_api_check = true
    skip_credentials_validation = true
    skip_requesting_account_id = true
    region = "us-east-1"
  }
 
 variable "keyname" {
    default = "sep21"
  }
   
  variable "security_groups" {
  default = ["asg-test", "default"]
}
