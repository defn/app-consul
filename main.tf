provider "aws" {
  region = "${var.provider_region}"
}

module "app" {
  source = "../module-aws-app"

  provider_region = "${var.provider_region}"

  vpc_name = "${var.vpc_name}"
  bucket_remote_state = "${var.bucket_remote_state}"
  context_org = "${var.context_org}"
  context_env = "${var.context_env}"
}
