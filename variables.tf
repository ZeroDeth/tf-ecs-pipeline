#------------ECS cluster----------------

# Customize the Cluster Name
variable "cluster_name" {}

# Customize your ECR Registry Name
variable "app_repository_name" {}

#------------APPLICATION----------------

variable "container_name" {}

# Number of containers
variable "desired_tasks" {}
variable "min_tasks" {}
variable "max_tasks" {}
variable "cpu_to_scale_up" {}
variable "cpu_to_scale_down" {}

# Desired CPU
variable "desired_task_cpu" {}

# Desired Memory
variable "desired_task_memory" {}

# Listener Application Load Balancer Port
variable "alb_port" {}

# Target Group Load Balancer Port
variable "container_port" {}

# Domain of App
variable "domain_name" {}
variable "domain" {}

#------------GITHUB----------------

# Github Repository Owner
variable "git_repository_owner" {}

# Github Repository Project Name
variable "git_repository_name" {}

# Default Branch
variable "git_repository_branch" {}

# Customize your AWS Region
variable "aws_region" {}
