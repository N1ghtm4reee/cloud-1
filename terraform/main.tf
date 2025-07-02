terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}

provider "digitalocean" {
  token = var.do_token
}

resource "digitalocean_project" "cloud-1" {
    name        = "cloud-1"
    description = "cloud-1 project"
    purpose     = "Web Application"
    resources = [digitalocean_droplet.aakhrif.urn]
}

resource "digitalocean_droplet" "aakhrif" {
    name = "aakhrifs"
    region = "nyc3"
    size   = "s-1vcpu-2gb"
    image  = "ubuntu-20-04-x64"
    ssh_keys = [var.ssh_fingerprint]
}
