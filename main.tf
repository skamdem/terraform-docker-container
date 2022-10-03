terraform {
    required_providers {
      docker = {
          source    = "kreuzwerker/docker"
          version   = "~> 2.22.0" #2.13.0
      }
    }
}

provider "docker" {}

resource "docker_image" "nginx" {
    name            = "nginx:latest"
    keep_locally    = false
}

resource "docker_container" "nginx" {
    image           = docker_image.nginx.image_id
    name            = "tutorial" 
    ports {
        internal     = 80
        external    = 8000
    }
}