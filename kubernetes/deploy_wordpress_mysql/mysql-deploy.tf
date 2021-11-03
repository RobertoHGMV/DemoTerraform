resource "kubernetes_deployment" "mysql" {
 metadata {
   name = var.mysql_deployment_name
   namespace = kubernetes_namespace.wordpress.metadata.0.name
   labels = local.mysql_labels
 }
 spec {
   replicas = var.mysql_deployment_replicas_count
   selector {
     match_labels = local.mysql_labels
   }
   template {
     metadata {
       labels = local.mysql_labels
     }
     spec {
       container {
         image = var.mysql_deployment_container_image
         name  = var.mysql_container_name
         port {
           container_port = var.mysql_container_port
         }
         env {
           name = "MYSQL_ROOT_PASSWORD"
           value_from {
             secret_key_ref {
               name = var.mysql_secret_key_name
               key = var.mysql_secret_data_param_password
             }
           }
         }
       }
     }
   }
 }
}

resource "kubernetes_service" "mysql-service" {
 metadata {
   name = "mysql-service"
   namespace = kubernetes_namespace.wordpress.metadata.0.name
 }
 spec {
   selector = local.mysql_labels
   port {
     port        = var.mysql_service_port
     target_port = var.mysql_service_target_port
   }
   type = "NodePort"
 }
}