# Running nginx in a docker image with terraform

This project originates from https://github.com/formidablae/learn-terraform-docker-container

Terraform code to run nginx inside a container

run these commands:

```
$ terraform init
$ terraform validate
$ terraform fmt
$ terraform plan
$ terraform apply
```
Note: Run this if you update "required_providers"
```
terraform init -upgrade
```

for delete:
```
$ terraform destroy
```

View the project at http://localhost:8000/