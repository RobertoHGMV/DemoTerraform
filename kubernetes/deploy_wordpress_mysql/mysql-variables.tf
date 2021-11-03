variable "mysql_namespace_name" {
  type        = string
  description = "Mysql Namespace"
}

variable "mysql_deployment_name" {
  type        = string
  description = "Mysql Deployment"
}

variable "mysql_deployment_container_image" {
  type        = string
  description = "Imagem"
}

variable "mysql_container_name" {
  type        = string
  description = "Nome do container"
}

variable "mysql_container_port" {
  type        = number
  description = "Número da porta do container"
}

variable "mysql_service_metadata_name" {
  type        = string
  description = "Nome do serviço"
}

variable "mysql_service_node_port" {
  type        = number
  description = "Número da porta node"
}

variable "mysql_service_port" {
  type        = number
  description = "Número da porta"
}

variable "mysql_service_target_port" {
  type        = number
  description = "Número da porta de destino"
}

variable "mysql_deployment_replicas_count" {
  type        = number
  description = "Número de replicas"
}