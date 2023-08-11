output "id" {
  value       = module.azurerm_resourcegroup_type1.id
  description = "Returns Resource Group ID."
}
output "location" {
  value       = module.azurerm_resourcegroup_type1.location
  description = "Returns Resource Group Location."
}
output "name" {
  value       = module.azurerm_resourcegroup_type1.azurecvt_resourcegroup.name
  description = "Returns Resource Group Name."
}
output "tags" {
  value       = module.azurerm_resourcegroup_type1.tags
  description = "Returns Resource Group Tags."
}
output "managed_by" {
  value       = module.azurerm_resourcegroup_type1.managed_by
  description = "Returns the ID of the resource or application that manages this Resource Group."
}

output "lock_id" {
  value       = resource.azurerm_management_lock.lock.id
  description = "Returns Resource Group Lock ID."
}
output "lock_name" {
  value       = resource.azurerm_management_lock.name
  description = "Returns Resource Group Lock Name."
}
output "lock_scope" {
  value       = resource.azurerm_management_lock.scope
  description = "Returns Resource Group Lock scope"
}
output "lock_level" {
  value       = resource.azurerm_management_lock.lock_level
  description = "Returns Resource Group Lock Level"
}
output "lock_notes" {
  value       = resource.azurerm_management_lock.notes
  description = "Returns Resource Group Lock Note."
}
