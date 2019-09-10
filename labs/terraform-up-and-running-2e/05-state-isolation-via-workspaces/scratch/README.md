# NOTE:
- Good for isolating setups in same environment
- Not suitable to isolate different environments (dev, qa, prod) because it is very easy to using the wrong workspace (destroying production by mistake)

# Steps
```shell script
source .secrets/aws-access.sh

terraform init
terraform apply

terraform workspace show
# will be 'default'

terraform workspace new example1
terraform plan
terraform apply # This will create a new instance in example1 workspace

terraform workspace new example2
terraform plan
terraform apply # This will create a new instance in example2 workspace
```

# Cleanup
```shell script
terraform workspace select example2
terraform destroy

terraform workspace select example1
terraform destroy

terraform workspace select default
terraform destroy
```

