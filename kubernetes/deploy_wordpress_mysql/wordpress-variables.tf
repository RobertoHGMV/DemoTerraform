variable "wordpress_namespace_name" {
  type        = string
  description = "wordpress Namespace"
}

variable "wordpress_deployment_name" {
  type        = string
  description = "wordpress Deployment"
}

variable "wordpress_deployment_container_image" {
  type        = string
  description = "Imagem"
}

variable "wordpress_container_name" {
  type        = string
  description = "Nome do container"
}

variable "wordpress_container_port" {
  type        = number
  description = "Número da porta do container"
}

variable "wordpress_service_metadata_name" {
  type        = string
  description = "Nome do serviço"
}

variable "wordpress_service_node_port" {
  type        = number
  description = "Número da porta node"
}

variable "wordpress_service_port" {
  type        = number
  description = "Número da porta"
}

variable "wordpress_service_target_port" {
  type        = number
  description = "Número da porta de destino"
}

variable "wordpress_deployment_replicas_count" {
  type        = number
  description = "Número de replicas"
}