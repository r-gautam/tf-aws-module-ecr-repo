output "name"{
  value = aws_ecr_repository.ecr_repo.name
  
}

output "registry_url" {
  value = aws_ecr_repository.ecr_repo.repository_url
}

output "arn" {
  value = aws_ecr_repository.ecr_repo.arn
}

output "id" {
  value = aws_ecr_repository.ecr_repo.id
}