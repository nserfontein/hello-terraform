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

curl $(terraform output alb_dns_name)
```

# Cleanup
```shell script
cd stage/services/webserver-cluster
terraform destroy

cd stage/data-stores/mysql
terraform destroy

cd global/s3
terraform destroy
```
