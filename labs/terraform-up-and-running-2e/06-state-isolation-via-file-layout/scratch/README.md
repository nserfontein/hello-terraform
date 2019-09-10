# Steps
```shell script
source .secrets/secrets.sh

cd global/s3
terraform init
terraform apply


cd stage/data-stores/mysql
terraform init
terraform apply

cd stage/services/webserver-cluster
terraform init
terraform apply

```

# Cleanup
```shell script
```

