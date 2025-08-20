output "container_id" {
  value       = docker_container.flutter.id
  description = "ID of the Docker container"
}

output "container_name" {
  value       = docker_container.flutter.name
  description = "Container name"
}

output "network_name" {
  value       = docker_network.local_network.name
  description = "Docker network name"
}
