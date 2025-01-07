###cloud vars


variable "cloud_id" {
  type        = string
  default     = "b1g1li51c4ebgmu7e9s6"
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
}

variable "folder_id" {
  type        = string
  default     = "b1gbldqcbvmq6hh0agh0"
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id"
}

variable "default_zone" {
  type        = string
  default     = "ru-central1-a"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}
variable "default_cidr" {
  type        = list(string)
  default     = ["10.0.1.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}

variable "vpc_name" {
  type        = string
  default     = "develop"
  description = "VPC network & subnet name"
}

variable "vm_web_family" {
  type        = string
  default     = "ubuntu-2004-lts"
  description = "Yandex compute image family"
}

variable "vm_web_name" {
  type        = string
  default     = "netology-develop-platform-web"
  description = "Yandex compute VM name"
}

variable "vm_web_platform_id" {
  type        = string
  default     = "standard-v2"
  description = "Yandex compute VM platform id"
}

variable "vm_web_cores" {
  type        = number
  default     = 2
  description = "Yandex compute VM cores"
}

variable "vm_web_memory" {
  type        = number
  default     = 1
  description = "Yandex compute VM memory"
}

variable "vm_web_core_fraction" {
  type        = number
  default     = 5
  description = "Yandex compute VM core_fraction"
}

variable "vm_web_preemptible" {
  type        = bool
  default     = true
  description = "Yandex compute VM preemptible"
}

variable "vm_web_nat" {
  type        = bool
  default     = true
  description = "Yandex compute VM nat"
}

###ssh vars

variable "vms_ssh_root_key" {
  type        = string
  default     = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIJLT8e71AST0K2bcmvup2ZiGEHjpNSOoE6pxmeX/DdCH alex@ubu04"
  description = "ssh-keygen -t ed25519"
}
