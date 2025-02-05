resource "aws_ecs_cluster" "python_ecs" {
  name = "python-ecs-cluster-mumbai"
}

resource "aws_ecs_task_definition" "python_task" {
  family                   = "python-task-mumbai"
  network_mode             = "awsvpc"
  requires_compatibilities = ["FARGATE"]
  cpu                      = "256"
  memory                   = "512"

  container_definitions = jsonencode([
    {
      name      = "python-container"
      image     = "${aws_ecr_repository.python_app_repo.repository_url}:latest"
      cpu       = 256
      memory    = 512
      essential = true
      portMappings = [
        {
          containerPort = 80
          hostPort      = 80
        }
      ]
    }
  ])
}

resource "aws_ecs_service" "python_service" {
  name            = "python-service-mumbai"
  cluster         = aws_ecs_cluster.python_ecs.id
  task_definition = aws_ecs_task_definition.python_task.arn
  launch_type     = "FARGATE"

  network_configuration {
    subnets         = [aws_subnet.public_subnet.id]
    security_groups = [aws_security_group.ecs_sg.id]
    assign_public_ip = true
  }
}

