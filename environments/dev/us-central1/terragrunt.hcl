terraform {
  source = "git::https://github.com/devops-sathsara/ci-cd-iac-terraform.git//src?ref=main"
}

# Find root terragrunt.hcl and inherit its configurations
include {
  path = find_in_parent_folders()
}

inputs = {
  environment   = "dev"
  project_id    = "sath-test-dev"
  region        = "us-central1"
  machine_type  = "e2-micro"
}
