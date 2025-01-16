locals {
  dir_parsed = regex(".*/(?P<env>.*?)/(?P<region>.*?)$", get_terragrunt_dir())
  env        = local.dir_parsed.env
  region     = local.dir_parsed.region
}

remote_state {
  backend = "gcs"

  config = {
    bucket      = "iac-tf-state-bucket-${local.env}"
    prefix      = "${path_relative_to_include()}/tfstate"
    project     = "sath-test-terraform"
    location    = "us-east4"
  }

  generate = {
    path      = "backend.tf"
    if_exists = "overwrite_terragrunt"
  }
}
