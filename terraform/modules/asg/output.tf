output "launch_template_id" {
  value = aws_launch_template.ecs_launch_template.id
}

output "launch_template_latest_version" {
  value = aws_launch_template.ecs_launch_template.latest_version
}

output "asg_name" {
  value = aws_autoscaling_group.ecs_asg.name
}

output "asg_arn" {
  value = aws_autoscaling_group.ecs_asg.arn
}

output "capacity_provider_name" {
  value = aws_ecs_capacity_provider.ecs_capacity_provider.name
}