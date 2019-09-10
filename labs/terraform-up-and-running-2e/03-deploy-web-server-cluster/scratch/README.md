```shell script
source .secrets/aws-access.sh

terraform init
terraform graph # http://dreampuf.github.io/GraphvizOnline
terraform apply

terraform output
terraform output alb_dns_name

curl $(terraform output alb_dns_name)

terraform destroy
```
