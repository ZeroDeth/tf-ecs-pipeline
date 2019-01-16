data "template_file" "api_task" {
  template = "${file("${path.module}/task-definitions/hapi-task.json")}"

  vars {
    image               = "${aws_ecr_repository.hapi-app.repository_url}"
    container_name      = "${var.container_name}"
    container_port      = "${var.container_port}"
    log_group           = "${aws_cloudwatch_log_group.hapi-app.name}"
    desired_task_cpu    = "${var.desired_task_cpu}"
    desired_task_memory = "${var.desired_task_memory}"
  }
}

resource "aws_ecs_task_definition" "hello-app" {
  family                   = "${var.cluster_name}_app"
  container_definitions    = "${data.template_file.api_task.rendered}"
  requires_compatibilities = ["FARGATE"]
  network_mode             = "awsvpc"
  cpu                      = "${var.desired_task_cpu}"
  memory                   = "${var.desired_task_memory}"

  execution_role_arn = "${aws_iam_role.ecs_execution_role.arn}"
  task_role_arn      = "${aws_iam_role.ecs_execution_role.arn}"
}
