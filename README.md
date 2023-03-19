# CI/CD Best Practices for Terraform

*This repository contains a GitHub Actions pipeline that incorporates some best practices for managing Terraform code.*

## Features

* Multi-environment, multi-project & multi-region deployment with [Terragrunt](https://terragrunt.gruntwork.io/)
* TF State stored in GCS backend 
* Deploy different versions for each environment
* Save TF plan output to GCS **
* Pre-commit hooks for validation
* CI/CD pipeline with multiple stages
    * Validate (`terraform validate)`: To make sure that IaC is syntactically valid
    * Format (`terraform fmt)`: To make sure that IaC files have the same format.
    * Lint ([Checkov](https://www.checkov.io/)): To make sure that IaC uses specific practices and conventions.
    * Secure ([TFSec](https://aquasecurity.github.io/tfsec)): To make sure that IaC follows security best practices.
    * Test ([Terratest](https://terratest.gruntwork.io/)): To make sure IaC is functionally valid. **
    * Cost ([InfraCost](https://www.infracost.io/)): To make sure infra cost is within the limits




## Multi-environment, multi-project & multi-region deployment
Terragrunt project has the following characteristics:
* Multi-Environment: Dev, QA and Prod environments
* Multi-Account: Different GCP projects (accounts) for Dev, QA and Prod
* Multi-Region: Prod is deployed accross multiple regions