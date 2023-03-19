# `pre-commit` file

This hook first runs terraform fmt on all Terraform files that have been staged for the commit, using the git diff command to find the relevant files. If the formatting check fails, the hook prevents the commit from being made and displays an error message.

Next, the hook runs terraform validate on the entire Terraform codebase, checking for any configuration errors or invalid resource definitions. If the validation check fails, the hook prevents the commit from being made and displays an error message.

If all checks pass, the commit is allowed to proceed.

To use this hook, save the code to a file named pre-commit in the .git/hooks directory of your Terraform Git repository, and make the file executable using the chmod +x pre-commit command. Then, the hook will run automatically before each commit, ensuring that all Terraform files in the repository are properly formatted and free of validation errors.

# `.pre-commit-config.yaml` file

This is a pre-commit configuration file that uses two external repositories: gruntwork-io/pre-commit and antonbabenko/pre-commit-terraform.

The gruntwork-io/pre-commit repository provides pre-commit hooks for Terraform, including terraform-validate and terraform-fmt. These hooks validate the Terraform configuration and enforce a consistent formatting style. To use these hooks, you need to add the following code to your .pre-commit-config.yaml file:

The antonbabenko/pre-commit-terraform repository provides additional pre-commit hooks for Terraform, including terraform_tfsec and checkov. terraform_tfsec checks your Terraform code for security issues using the tfsec tool, while checkov checks your Terraform code for compliance with industry standards and best practices. To use these hooks, you need to add the following code to your .pre-commit-config.yaml file:

With these two external repositories configured in your .pre-commit-config.yaml file, pre-commit will automatically download and install the necessary hooks when you run pre-commit install. You can then use pre-commit run to execute all the hooks on your Terraform code before committing your changes.