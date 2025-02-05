output "ecr_repository_url" {
  value = aws_ecr_repository.python_app_repo.repository_url
}

output "ecs_cluster_name" {
  value = aws_ecs_cluster.python_ecs.name
}

