```shell script
source .secrets/aws-access.sh

# Note: this needs a two-step process because of backend limitations
terraform init
terraform apply
```

# Destroy (Two-step process due to backend limitations)
- Go to the Terraform code, remove the backend configuration, and rerun `terraform init` to copy the Terraform state back to your local disk.
- Run terraform destroy to delete the S3 bucket and DynamoDB table.

# Overcome limitations
- [Use Terragrunt](https://github.com/gruntwork-io/terragrunt)
