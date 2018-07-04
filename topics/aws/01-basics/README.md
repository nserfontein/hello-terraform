# Configure AWS
```bash
brew install awscli
aws configure
```

# Deploy a Single Server
```bash
cd 01-single-server
terraform plan
terraform apply
```

# Deploy Single Web Server
```bash
cd 02-single-web-server
terraform graph
```

- [Graphviz](http://dreampuf.github.io/GraphvizOnline/)

```bash
terraform plan
terraform plan -var server_port="8080"

terraform apply

terraform output public_ip
```









