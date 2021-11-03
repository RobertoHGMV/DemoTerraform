terraform {
    required_providers {
        kubernetes = {
            source  = "hashicorp/kubernetes"
            version = "~> 2.0.0"
        }
    }
    backend "local" {
        path = "/tmp/terraform.tfstate"
    }
}

provider "kubernetes" {
    config_path = "~/.kube/config"
}