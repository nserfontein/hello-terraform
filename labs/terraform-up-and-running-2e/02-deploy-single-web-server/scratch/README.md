```shell script
source .secrets/aws-access.sh

terraform init
terraform graph # http://dreampuf.github.io/GraphvizOnline
terraform apply

terraform output
terraform output public_ip

curl $(terraform output public_ip):8080

terraform destroy
```
