variable "location" {
    description = "Região onde os recursos serão provisionados na Azure"
    type = string
    default = "West Europe"  
}

variable "account_tier" {
    description = "Tier da Storage account da Azure"
    type = string
    default = "Standard"
}

variable "account_replication_type" {
    description = "Tipo da replicação de dados da storage account"
    type = string
    default = "LRS"  
}