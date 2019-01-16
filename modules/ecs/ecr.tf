resource "aws_ecr_repository" "hapi-app" {
  name = "${var.app_repository_name}"
}
