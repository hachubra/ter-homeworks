variable "each_vm" {
  type = list(object({  vm_name=string, cpu=number, ram=number, disk_volume=number }))
  default = ([{ vm_name="main",cpu=2,ram=2,disk_volume=5 }, { vm_name="replica",cpu=4,ram=1,disk_volume=7 }])
}

resource "yandex_compute_instance" "db" {
for_each = {for x in var.each_vm: x.vm_name => x}
    name = each.value.vm_name
    platform_id = var.vm_web_platform_id 
    zone        = var.default_zone
        resources { 
    cores         = each.value.cpu 
    memory        = each.value.ram 
    core_fraction = var.vms_resources.web.core_fraction
        }
    boot_disk {
        initialize_params {
        image_id = data.yandex_compute_image.ubuntu.image_id
        size  = each.value.disk_volume 
    }
    }
    scheduling_policy {
        preemptible = var.vm_web_preemptible
    }
    network_interface {
        subnet_id = yandex_vpc_subnet.develop.id
        nat       = var.vm_web_nat
        security_group_ids = [yandex_vpc_security_group.example.id]
    }
    metadata = {
    serial-port-enable = var.metadata.all.serial_port
    ssh-keys           = "ubuntu:${local.key}"
  }    
}