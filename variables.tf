variable "name" {
  type        = string
  description = "(Required) The Azure Region where the Resource Group should exist. Changing this forces a new Resource Group to be created"
  validation {
    condition     = can(regex("^[a-zA-Z][a-zA-Z\\-\\_\\.\\(\\)0-9]{1,90}$", var.name))
    error_message = "Name must start with letter, only contain letters, numbers, dashes, or underscores and must be between 1 and 90 characters."
  }
}

variable "location" {
  type        = string
  description = "(Required) The Azure Region where the Resource Group should exist. Changing this forces a new Resource Group to be created."
}

variable "tags" {
  type        = map(string)
  description = "(Optional) A map of strings for tagging the resource. Changing this updates the resource."
  default     = null
}

variable "managed_by" {
  type        = string
  description = "(Optional) The ID of the resource or application that manages this Resource Group."
  default     = null
}

variable "lock_name" {
  type        = string
  description = "(Optional) Specifies a named for this Resource Group Lock."
  default     = "Locked by Terraform module on creation"
}

variable "lock_level" {
  type        = string
  description = "(Required) Specifies the Level to be used for this RG Lock. Possible values are Empty (no lock), CanNotDelete and ReadOnly."
  validation {
    condition     = contains(["CanNotDelete", "ReadOnly"], var.lock_level)
    error_message = "Invalid input, options: \"CanNotDelete\", \"ReadOnly\"."
  }
  default = "CanNotDelete"
}

variable "lock_notes" {
  type        = string
  description = "Sets a description on the Resource Group Lock."
  default     = "Resource Group was locked by Terraform module"
}
