terraform {
  source = "../../../src"
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