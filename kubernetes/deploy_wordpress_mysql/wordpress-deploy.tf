resource "kubernetes_deployment" "wordpress" {
 metadata {
   name = var.wordpress_deployment_name
   namespace = kubernetes_namespace.wordpress.metadata.0.name
   labels = local.wordpress_labels
 }
 spec {
   replicas = var.wordpress_deployment_replicas_count
   selector {
     match_labels = local.wordpress_labels
   }
   template {
     metadata {
       labels = local.wordpress_labels
     }
     spec {
       container {
         image = var.wordpress_deployment_container_image
         name  = var.wordpress_container_name
         port {
           container_port = var.wordpress_container_port
         }
         env {
           name = "WORDPRESS_DB_HOST"
           value = var.mysql_service_metadata_name
         }
         env {
           name = "WORDPRESS_DB_PASSWORD"
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

resource "kubernetes_service" "wordpress-service" {
 metadata {
   name = var.wordpress_service_metadata_name
   namespace = kubernetes_namespace.wordpress.metadata.0.name
 }
 spec {
   selector = local.wordpress_labels
   port {
     port        = var.wordpress_service_port
     target_port = var.wordpress_service_target_port
     node_port   = var.wordpress_service_node_port
   }
  #  type = "NodePort"
   type = "LoadBalancer"
 }
}