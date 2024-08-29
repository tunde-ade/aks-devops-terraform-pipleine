variable "location" {
  default     = "francecentral"
  type        = string
  description = "region where clusters will be created"
}

variable "resource_group_name" {
  type    = string
  default = "aks-terraform"
}

variable "environment" {
  type    = string
  default = "dev"
}

# AKS Input Variables
# SSH Public Key for Linux VMs
variable "ssh_public_key" {
  default     = "~/.ssh/aks-sshkeys-terraform/aksprodsshkey.pub"
  description = "This variable defines the SSH Public Key for Linux k8s Worker nodes"
}

# Windows Admin Username for k8s worker nodes
variable "windows_admin_username" {
  type        = string
  default     = "azureuser"
  description = "This variable defines the Windows admin username k8s Worker nodes"
}

# Windows Admin Password for k8s worker nodes
variable "windows_admin_password" {
  type        = string
  default     = "Adet@milayo2618!!"
  description = "This variable defines the Windows admin password k8s Worker nodes"
}