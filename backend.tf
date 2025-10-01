terraform {
  backend "s3" {
    bucket       = "w7-dk-terraform-bucket"
    key          = "week-10/terraform.tfstate"
    region       = "us-east-1"
    use_lockfile = false
  }
}