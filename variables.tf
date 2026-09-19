variable "subaccount_id" {
  description = "ID of the subaccount where Workzone will be subscribed."
  type        = string
  validation {
    condition     = can(regex("^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$", var.subaccount_id))
    error_message = "subaccount_id must be a valid UUID."
  }
}

variable "btp_platform_idp" {
  description = "FQDN of the Platform Identity Provider."
  type        = string
  validation {
    condition     = can(regex("^([a-zA-Z0-9]([a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?\\.)+[a-zA-Z]{2,63}$", var.btp_platform_idp))
    error_message = "btp_platform_idp must be a valid FQDN."
  }
}

variable "cf_org_id" {
  description = "ID of the Cloud Foundry organization."
  type        = string
  validation {
    condition     = can(regex("^[a-zA-Z0-9._%+-]+$", var.cf_org_id))
    error_message = "cf_org_id must be a valid Cloud Foundry organization ID."
  }
}

variable "cf_administrator" {
  description = "Email address of the user to be added to the Cloud Foundry space."
  type        = string
  validation {
    condition     = can(regex("^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}$", var.cf_administrator))
    error_message = "cf_administrator must be a valid email address."
  }
}

variable "cf_space_name" {
  description = "Name of the Cloud Foundry space created for Workzone services."
  type        = string
  default     = "workzone"
  validation {
    condition     = can(regex("^[a-z0-9][a-z0-9-]{0,61}[a-z0-9]$|^[a-z0-9]$", var.cf_space_name))
    error_message = "cf_space_name must be a lowercase DNS-style name between 1 and 63 characters."
  }
}

variable "workzone_administrators_group" {
  description = "Platform identity-provider group assigned the Launchpad_Admin role collection."
  type        = string
  default     = "wz_administrators"
  validation {
    condition     = can(regex("^[a-zA-Z0-9._-]+$", var.workzone_administrators_group))
    error_message = "workzone_administrators_group must contain only letters, digits, dots, underscores, or hyphens."
  }
}
