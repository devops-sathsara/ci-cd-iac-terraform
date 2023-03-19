# CI/CD Best Practices for Terraform

*This repository contains a GitHub Actions pipeline that incorporates some best practices for managing Terraform code.*

## Features

* Multi-environment & multi-region deployment with [Terragrunt](https://terragrunt.gruntwork.io/)
* Static code analysis with [Checkov](https://www.checkov.io/)
* Security with [TFSec](https://aquasecurity.github.io/tfsec)
* Cloud cost estimation with [InfraCost](https://www.infracost.io/)
* TF State stored in GCS backend 
* Deploy different versions for each environment
* Pre-commit hooks
* TO-DO - Save TF plan output to GCS