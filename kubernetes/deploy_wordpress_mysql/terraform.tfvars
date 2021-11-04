mysql_namespace_name = "mysql"
mysql_deployment_name = "mysql"
mysql_deployment_container_image = "mysql:5.6"
mysql_container_name = "mysql"
mysql_container_port = 3306
mysql_service_metadata_name = "mysql-service"
mysql_service_node_port = 3306
mysql_service_port = 3306
mysql_service_target_port = 3306
mysql_deployment_replicas_count = 1

wordpress_namespace_name = "wordpress"
wordpress_deployment_name = "wordpress"
wordpress_deployment_container_image = "wordpress:4.8-apache"
wordpress_container_name = "wordpress"
wordpress_container_port = 80
wordpress_service_metadata_name = "wordpress-service"
wordpress_service_node_port = 32000
wordpress_service_port = 80
wordpress_service_target_port = 80
wordpress_deployment_replicas_count = 1

mysql_secret_key_name = "mysql-pass"
mysql_secret_data_param_password = "password"