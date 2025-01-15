terraform {
  source = "git::https://github.com/devops-sathsara/ci-cd-iac-terraform.git//src?ref=v1.0.0"
}

# Find root terragrunt.hcl and inherit its configurations
include {
  path = find_in_parent_folders()
}

inputs = {
  environment   = "prod"
  project_id    = "sathsara-prod"
  region        = "us-central1"
  machine_type  = "e2-medium"
}