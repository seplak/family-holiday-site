terraform {
  required_version = "=0.12.31"
}

module "static-site" {
  source      = "git@github.com:tseplak/aws-static-site?ref=master"
  aws_region  = var.aws_region
  error_page  = var.error_page
  hosted_zone = var.hosted_zone
  index_page  = var.index_page
  versioning  = var.versioning
  domain      = var.domain
}
