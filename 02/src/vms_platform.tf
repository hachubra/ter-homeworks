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


variable "vm_db_family" {
  type        = string
  default     = "ubuntu-2004-lts"
  description = "Yandex compute image family"
}

variable "vm_db_name" {
  type        = string
  default     = "netology-develop-platform-db"
  description = "Yandex compute VM name DB"
}

variable "vm_db_platform_id" {
  type        = string
  default     = "standard-v2"
  description = "Yandex compute VM platform id"
}

variable "vm_db_cores" {
  type        = number
  default     = 2
  description = "Yandex compute VM cores DB"
}

variable "vm_db_memory" {
  type        = number
  default     = 2
  description = "Yandex compute VM memory DB"
}

variable "vm_db_core_fraction" {
  type        = number
  default     = 20
  description = "Yandex compute VM core_fraction"
}

variable "vm_db_preemptible" {
  type        = bool
  default     = true
  description = "Yandex compute VM preemptible"
}

variable "vm_db_nat" {
  type        = bool
  default     = true
  description = "Yandex compute VM nat"
}

variable "instance_name" {
  type        = string
  default     = "platform"
  description = "Yandex compute instance name"
}

variable "instance_db_name" {
  type        = string
  default     = "platform-db"
  description = "Yandex compute instance name DB"
}