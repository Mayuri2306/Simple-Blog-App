output "execution_role_arn" {
  value = aws_iam_role.ecs_execution_role.arn
}

output "task_role_arn" {
  value = aws_iam_role.ecs_task_role.arn
}

output "instance_profile_name" {
  value = aws_iam_instance_profile.ecs_profile.name
}

output "instance_role_arn" {
  value = aws_iam_role.ecs_instance_role.arn
}

output "ecs_cluster_name" {
  value = aws_ecs_cluster.application_cluster.name
}