resource "kubernetes_secret" "mysql-pass" {
 metadata {
   name = var.mysql_secret_key_name
   namespace = kubernetes_namespace.wordpress.metadata.0.name
 }
 data = {
   password = "root"
 }
}