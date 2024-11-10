variable "location" {
  description = "Região onde os recursos serão provisionados na Azure"
  type        = string
  default     = "West Europe"
}

variable "account_tier" {
  description = "Tier da Storage account da Azure"
  type        = string
  default     = "Standard"
}

variable "account_replication_type" {
  description = "Tipo da replicação de dados da storage account"
  type        = string
  default     = "LRS"
}

variable "resource_group_name" {
  description = "Nome do resoucre group na azure"
  type        = string
  default     = "rg-curso-terraform"
}

variable "storage_account_name" {
  description = "Nome do Storage Account na Azure"
  type        = string
  default     = "lincolngadeaterraform"
}

variable "container_name" {
  description = "Nome do container na Azure"
  type        = string
  default     = "container-terraform"
}