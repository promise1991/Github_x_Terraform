
terraform {
  backend "s3" {
    bucket  = "my-test-state-v1"           # ------------------  Name of your S3 bucket
    key     = "ec2-text/dev/terraform.tfstate"      # -----------  The file name for your remote state. Note that Terraform will automatically create this path to store the state for you as soon as you initialize it
    region  = "us-east-1"                         #  -----------  Region where your bucket is created
    encrypt = true                               #  -----------   Encrypt state file at rest
  }
}
    