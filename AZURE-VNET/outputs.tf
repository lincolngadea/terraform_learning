output "subnet_it" {
  description = "ID da subnet criada na AZURE"
  value       = azurerm_subnet.subnet.id
}

output "security_group_id" {
  description = "ID do network security group da AZURE"
  value       = azurerm_network_security_group.nsg.id
}