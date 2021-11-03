resource "kubernetes_namespace" "kube" {
  metadata {
    name = var.kubernetes_namespace_name
  }
}
resource "kubernetes_deployment" "kube" {
  metadata {
    name      = var.kubernetes_deployment_name
    namespace = kubernetes_namespace.kube.metadata.0.name
  }
  spec {
    replicas = 1
    selector {
      match_labels = {
        app = var.kubernetes_deployment_app
      }
    }
    template {
      metadata {
        labels = {
          app = var.kubernetes_deployment_app
        }
      }
      spec {
        container {
          image = var.kubernetes_deployment_container_image
          name  = var.nginx_container_name
          port {
            container_port = var.nginx_container_port
          }
        }
      }
    }
  }
}
resource "kubernetes_service" "kube" {
  metadata {
    name      = var.kubernetes_service_metadata_name
    namespace = kubernetes_namespace.kube.metadata.0.name
  }
  spec {
    selector = {
      app = kubernetes_deployment.kube.spec.0.template.0.metadata.0.labels.app
    }
    type = "NodePort"
    port {
      node_port   = var.kubernetes_service_node_port
      port        = var.kubernetes_service_port
      target_port = 80
    }
  }
}