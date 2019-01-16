# ECS  CodePipeline to deploy Containers on AWS by Terraform

# Configuration

## Edit your preferences

Edit `terraform.tfvars.example` file to customize application preferences like Github account, repo and owner, Load Balancer ports and cluster preferences.

## Edit your Build steps

This demo build, dockerize and deploy a simple Node.JS application. Customize your build steps on `modules/pipeline/templates/buildspec.yml` file.


## How to Deploy

### 1) Github Access Token

* Export Github Token as an environment variable.

```bash
export GITHUB_TOKEN=YOUR_TOKEN
```

### 2) Terraform

* Initialize Terraform

```bash
terraform init
```

* Plan our modifications

```bash
terraform plan
```

* Apply the changes on AWS

```bash
terraform apply --auto-approve
```

## License

MIT
