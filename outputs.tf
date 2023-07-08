output "all" {
  #value = docker_image.nginx.name
  value = docker_image.nginx
}

output "docker_container" {
  value = "${var.container_name}"
}