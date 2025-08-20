terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 2.23.0"
    }
  }
}

provider "docker" {
  host = "unix:///var/run/docker.sock"
}

resource "docker_network" "local_network" {
  name = var.network_name
}

resource "docker_image" "flutter" {
  name         = var.image_name
  keep_locally = false
}

resource "docker_container" "flutter" {
  name  = var.container_name
  image = docker_image.flutter.name

  networks_advanced {
    name = docker_network.local_network.name
  }

  ports {
    internal = var.internal_port
    external = var.external_port
  }

  restart = "unless-stopped"

  depends_on = [
    docker_network.local_network,
    docker_image.flutter
  ]
}
