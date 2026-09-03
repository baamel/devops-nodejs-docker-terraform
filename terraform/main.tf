terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }
}

provider "docker" {
  host = "npipe:////./pipe/dockerDesktopLinuxEngine"
}

resource "docker_image" "app" {
  name = "devops-app:latest"

  build {
    context    = "${path.module}/../nodeapp"
    dockerfile = "Dockerfile"
  }
}

resource "docker_container" "app" {
  name  = "devops-app"
  image = docker_image.app.image_id

  ports {
    internal = 8080
    external = 8080
  }
}