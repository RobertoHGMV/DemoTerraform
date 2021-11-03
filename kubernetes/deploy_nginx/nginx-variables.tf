variable "kubernetes_namespace_name" {
  type        = string
  description = "Kubernetes Namespace"
}

variable "kubernetes_deployment_name" {
  type        = string
  description = "Kubernetes Deployment"
}

variable "kubernetes_deployment_app" {
  type        = string
  description = "Nome do App"
}

variable "kubernetes_deployment_container_image" {
  type        = string
  description = "Imagem Nginx"
}

variable "nginx_container_name" {
  type        = string
  description = "Nome do container Nginx"
}

variable "nginx_container_port" {
  type        = number
  description = "Número da porta do container"
}

variable "kubernetes_service_metadata_name" {
  type        = string
  description = "Nome do serviço nginx"
}

variable "kubernetes_service_node_port" {
  type        = number
  description = "Número da porta node"
}

variable "kubernetes_service_port" {
  type        = number
  description = "Número da porta"
}

variable "kubernetes_service_target_port" {
  type        = number
  description = "Número da porta de destino"
}

variable "kubernetes_deployment_replicas_count" {
  type        = number
  description = "Número de replicas"
}