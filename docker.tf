# uses the 'latest' tag
# data "docker_image" "latest" {
#   name = "nginx:latest"
# }

resource "docker_image" "nginx" {
  name         = "nginx:latest" #data.docker_image.latest.name
  keep_locally = true #false
}

resource "docker_container" "nginx" {
  image = docker_image.nginx.image_id
  name  = var.container_name
  ports {
    internal = 80
    external = 8000
  }
}