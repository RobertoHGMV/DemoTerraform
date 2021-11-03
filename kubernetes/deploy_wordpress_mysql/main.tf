resource "kubernetes_namespace" "wordpress" {
  metadata {
    name = "wordpress"
  }
}

locals {
 wordpress_labels = {
   App = "wordpress"
   Tier = "frontend"
 }
 mysql_labels = {
   App = "wordpress"
   Tier = "mysql"
 }
}