# variables.tf

# AKS cluster name
variable "aks_cluster_name" {
  description = "The name of the AKS cluster to be created."
  type        = string
}

# Cluster location
variable "cluster_location" {
  description = "The Azure region where the AKS cluster will be deployed."
  type        = string
}

# DNS prefix for the cluster
variable "dns_prefix" {
  description = "The DNS prefix of the AKS cluster."
  type        = string
}

# Kubernetes version
variable "kubernetes_version" {
  description = "The version of Kubernetes to be used for the AKS cluster."
  type        = string
}

# Service Principal Client ID
variable "service_principal_client_id" {
  description = "The Client ID for the service principal associated with the AKS cluster."
  type        = string
  
}

# Service Principal Secret
variable "service_principal_secret" {
  description = "The Client Secret for the service principal associated with the AKS cluster."
  type        = string
}

# Networking Module Variables
# Resource Group Name
variable "resource_group_name" {
  description = "The name of the Azure Resource Group for networking resources."
  type        = string
}

# Virtual Network ID
variable "vnet_id" {
  description = "The ID of the Virtual Network created by the networking module."
  type        = string

}

# Control Plane Subnet ID
variable "control_plane_subnet_id" {
  description = "The ID of the control plane subnet within the Virtual Network."
  type        = string

}

# Worker Node Subnet ID
variable "worker_node_subnet_id" {
  description = "The ID of the worker node subnet within the Virtual Network."
  type        = string
}


variable "aks_nsg_id" {
  description = "The ID of the network security group within the Virtual Network."
  type        = string
}


