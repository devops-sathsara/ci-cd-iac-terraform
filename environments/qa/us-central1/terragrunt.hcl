terraform {
  source = "../../../src"
}

# Find root terragrunt.hcl and inherit its configurations
include {
  path = find_in_parent_folders()
}

inputs = {
  environment   = "qa"
  project_id    = "sathsara-qa"
  region        = "us-central1"
  machine_type  = "e2-micro"
}