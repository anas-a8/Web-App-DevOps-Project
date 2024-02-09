variable "client_id" {
  description = "The Client ID for the Azure service principal."
  type        = string
}

variable "client_secret" {
  description = "The Client Secret for the Azure service principal."
  type        = string
  sensitive   = true
}

variable "tenant_id" {
  description = "The Tenant ID for your Azure account."
  type        = string
}

variable "subscription_id" {
  description = "The Subscription ID for your Azure account."
  type        = string
}

variable "service_principal_client_id" {
  description = "The Client ID for the Azure service principal."
  type        = string
}

variable "service_principal_secret" {
  description = "The Client Secret for the Azure service principal."
  type        = string
  sensitive   = true
}