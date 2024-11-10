variable "location" {
  description = "Região onde os recursos serão criados"
  type        = string
  default     = "brazilsouth"
}

variable "account_tier" {
  description = "Tier da Storage Account na Azure"
  type        = string
  default     = "Standard"
}

variable "account_replication_type" {
  description = "Tipo de replicação de dados da Storage Account"
  type        = string
  default     = "LRS"
}

variable "storage_account_name" {
  description = "Nome do storage account na Azure"
  type        = string
  default     = "lincolngadeatfstate"
}

variable "container_name" {
  description = "Nome do container na Azure"
  type        = string
  default     = "remote-state"
}

variable "container_access_type" {
  description = "Tipo do access do container na Azure"
  type        = string
  default     = "private"
}